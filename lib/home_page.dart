import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:jaybird/consts.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wakelock/wakelock.dart';

class HomePage extends HookWidget {
  HomePage({Key? key}) : super(key: key);

  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? webViewController;

  final List<ContentBlocker> contentBlockers = [];

  PullToRefreshController? pullToRefreshController;

  @override
  Widget build(BuildContext context) {
    final isConnected = useState(true);
    useEffect(() {
      final deviceInfo = DeviceInfoPlugin();
      if (Platform.isAndroid) {
        deviceInfo.androidInfo
      }

      FlutterNativeSplash.remove();
      Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
        // Got a new connectivity status!
        if (result == ConnectivityResult.none) {
          isConnected.value = false;
        }
      });
      Future.microtask(() async {
        await Wakelock.enable();
        Map<Permission, PermissionStatus> statuses = await [
          Permission.location,
          Permission.storage,
        ].request();
        var connectivityResult = await (Connectivity().checkConnectivity());
        if (connectivityResult == ConnectivityResult.mobile) {
          // I am connected to a mobile network.
        } else if (connectivityResult == ConnectivityResult.wifi) {
          // I am connected to a wifi network.
        }
        // for each Ad URL filter, add a Content Blocker to block its loading.
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
