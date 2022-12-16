import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jaybird/consts.dart';
import 'package:jaybird/home_page.dart';

import 'firebase_options.dart';

Future main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  await SystemChrome.setPreferredOrientations(deviceOrienations);
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(ProviderScope(child: MaterialApp(home: HomePage())));
}
