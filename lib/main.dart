import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jaybird/consts.dart';
import 'package:jaybird/home_page.dart';

const _preview = bool.fromEnvironment('ENABLE_DEVICE_PREVIEW');
Future main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(deviceOrienations);
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(ProviderScope(child: MaterialApp(home: HomePage())));
}
