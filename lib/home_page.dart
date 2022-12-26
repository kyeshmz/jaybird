import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jaybird/consts.dart';
import 'package:jaybird/repositories/screenbrightness/screenbrightness_repository_impl.dart';
import 'package:jaybird/repositories/slack/slack_repository_impl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wakelock/wakelock.dart';

class HomePage extends HookConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? webViewController;

  final List<ContentBlocker> contentBlockers = [];

  PullToRefreshController? pullToRefreshController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isConnected = useState(true);
    final appLifeCycle = useAppLifecycleState();

    useEffect(() {
      if (appLifeCycle == AppLifecycleState.resumed) {
        ref.read(slackRepositoryProvider).sendStartup();
      }
      if (appLifeCycle == AppLifecycleState.inactive ||
          appLifeCycle == AppLifecycleState.detached) {
        ref.read(slackRepositoryProvider).sendError();
      }
      return null;
    }, [appLifeCycle]);

    useEffect(() {
      FlutterNativeSplash.remove();
      Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
        // Got a new connectivity status!
        if (result == ConnectivityResult.none) {
          isConnected.value = false;
        }
      });
      Future.microtask(() async {
        await ref
            .watch(screenBrightnessRepositoryImplProvider)
            .setScreenBrightness(1);

        await Wakelock.enable();
        Map<Permission, PermissionStatus> statuses = await [
          Permission.location,
          Permission.storage,
        ].request();
        var connectivityResult = await (Connectivity().checkConnectivity());
        if (connectivityResult == ConnectivityResult.none) {
          // I am connected to a mobile network.
        }
      });

      for (final adUrlFilter in adUrlFilters) {
        contentBlockers.add(ContentBlocker(
            trigger: ContentBlockerTrigger(
              urlFilter: adUrlFilter,
            ),
            action: ContentBlockerAction(
              type: ContentBlockerActionType.BLOCK,
            )));
      }

      // apply the "display: none" style to some HTML elements
      contentBlockers.add(ContentBlocker(
          trigger: ContentBlockerTrigger(
            urlFilter: ".*",
          ),
          action: ContentBlockerAction(
              type: ContentBlockerActionType.CSS_DISPLAY_NONE,
              selector: ".banner, .banners, .ads, .ad, .advert")));

      return null;
    }, []);

    return Scaffold(
        body: SafeArea(
      child: InAppWebView(
        key: webViewKey,
        initialOptions: InAppWebViewGroupOptions(
            crossPlatform: InAppWebViewOptions(
                clearCache: true,
                disableContextMenu: true,
                supportZoom: false,
                javaScriptCanOpenWindowsAutomatically: true,
                mediaPlaybackRequiresUserGesture: false,
                allowFileAccessFromFileURLs: true,
                allowUniversalAccessFromFileURLs: true,
                contentBlockers: contentBlockers),
            android: AndroidInAppWebViewOptions(
                clearSessionCache: true,
                safeBrowsingEnabled: false,
                builtInZoomControls: false),
            ios: IOSInAppWebViewOptions(
              disallowOverScroll: true,
              ignoresViewportScaleLimits: true,
              isDirectionalLockEnabled: true,
              allowsLinkPreview: false,
              disableLongPressContextMenuOnLinks: true,
              disableInputAccessoryView: true,
              isFraudulentWebsiteWarningEnabled: false,
              allowsAirPlayForMediaPlayback: false,
              allowsBackForwardNavigationGestures: false,
              allowsInlineMediaPlayback: true,
              allowsPictureInPictureMediaPlayback: false,
            )),
        initialUrlRequest: URLRequest(url: webViewUrl),
        onWebViewCreated: (controller) {
          webViewController = controller;
        },
      ),
    ));
  }
}
