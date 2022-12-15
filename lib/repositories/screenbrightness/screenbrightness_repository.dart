abstract class ScreenBrightnessRepository {
  Future<void> setScreenBrightness(double brightness);
  Future<void> resetScreenBrightness();
}
