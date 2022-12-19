import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jaybird/consts.dart';
import 'package:jaybird/home_page.dart';

const _preview = bool.fromEnvironment('ENABLE_DEVICE_PREVIEW');
Future main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // FlutterError.onError = (errorDetails) {
  //   FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  // };
  // // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  // PlatformDispatcher.instance.onError = (error, stack) {
  //   FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  //   return true;
  // };

  // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  await SystemChrome.setPreferredOrientations(deviceOrienations);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  // await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
  //     overlays: [SystemUiOverlay.top]);
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(ProviderScope(child: MaterialApp(home: HomePage())));
}
