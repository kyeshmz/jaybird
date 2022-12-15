import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:permission_handler/permission_handler.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb &&
      kDebugMode &&
      defaultTargetPlatform == TargetPlatform.android) {
    // await InAppWebViewController.setWebContentsDebuggingEnabled(kDebugMode);
  }
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends HookWidget {
  MyApp({Key? key}) : super(key: key);

  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? webViewController;

  final adUrlFilters = [
    ".*.doubleclick.net/.*",
    ".*.ads.pubmatic.com/.*",
    ".*.googlesyndication.com/.*",
    ".*.google-analytics.com/.*",
    ".*.adservice.google.*/.*",
    ".*.adbrite.com/.*",
    ".*.exponential.com/.*",
    ".*.quantserve.com/.*",
    ".*.scorecardresearch.com/.*",
    ".*.zedo.com/.*",
    ".*.adsafeprotected.com/.*",
    ".*.teads.tv/.*",
    ".*.outbrain.com/.*"
  ];

  final List<ContentBlocker> contentBlockers = [];

  PullToRefreshController? pullToRefreshController;

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Future.microtask(() async {
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

      Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
        // Got a new connectivity status!
      });
      return null;
    }, []);

    return WillPopScope(
      onWillPop: () async {
        // detect Android back button click
        final controller = webViewController;
        if (controller != null) {
          if (await controller.canGoBack()) {
            controller.goBack();
            return false;
          }
        }
        return true;
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text("InAppWebView test"),
          ),
          body: Column(children: <Widget>[
            Expanded(
              child: InAppWebView(
                key: webViewKey,
                initialOptions: InAppWebViewGroupOptions(
                    crossPlatform: InAppWebViewOptions(
                        clearCache: true,
                        disableContextMenu: true,
                        supportZoom: false,
                        javaScriptCanOpenWindowsAutomatically: true,
                        mediaPlaybackRequiresUserGesture: false,
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
                initialUrlRequest:
                    URLRequest(url: Uri.parse("https://github.com/flutter")),
                onWebViewCreated: (controller) {
                  webViewController = controller;
                },
              ),
            ),
          ])),
    );
  }
}
