import 'package:battery_plus/battery_plus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pochi/repositories/platformbattery_repository_impl.dart';
import 'package:pochi/state/platformbattery_state/platformbattery_state.dart';

class PlatformBatteryStateController
    extends StateNotifier<PlatformBatteryState> {
  PlatformBatteryStateController(this.ref)
      : super(const PlatformBatteryState(
            currentBatteryState: BatteryState.unknown)) {
    state.batteryStateChangesSubscription?.cancel();
    final platformBattery = ref.watch(platformBatteryRepositoryProvider);
    state = state.copyWith(
        batteryStateChangesSubscription:
            platformBattery.getBatteryChangeStream().listen((event) {
      state = state.copyWith(currentBatteryState: event);
    }));
  }
  final Ref ref;
}
