// Package imports:

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:screen_brightness/screen_brightness.dart';

part 'screenbrightness_repository_impl.freezed.dart';

@freezed
class ScreenBrightnessRepositoryImpl with _$ScreenBrightnessRepositoryImpl {
  const factory ScreenBrightnessRepositoryImpl({
    required ScreenBrightness screenBrightness,
  }) = _ScreenBrightnessRepositoryImpl;

  const ScreenBrightnessRepositoryImpl._();

  @override
  Future<void> setScreenBrightness(double brightness) async {
    try {
      await screenBrightness.setScreenBrightness(1);
    } on Exception catch (e) {
      print(e);
      throw Exception('Failed to set brightness');
    }
  }

  @override
  Future<void> resetScreenBrightness() async {
    try {
      await screenBrightness.resetScreenBrightness();
    } on Exception catch (e) {
      print(e);
      throw Exception('Failed to reset brightness');
    }
  }
}

final screenBrightnessRepositoryImplProvider = Provider((ref) {
  return ScreenBrightnessRepositoryImpl(screenBrightness: ScreenBrightness());
});
