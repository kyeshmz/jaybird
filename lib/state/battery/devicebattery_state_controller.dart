import 'package:battery_plus/battery_plus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jaybird/state/battery/devicebattery_state.dart';

import '../../repositories/battery/devicebattery_repository_impl.dart';

class PlatformBatteryStateController extends StateNotifier<DeviceBatteryState> {
  PlatformBatteryStateController(this.ref)
      : super(const DeviceBatteryState(
            currentBatteryState: BatteryState.unknown)) {
    state.batteryStateChangesSubscription?.cancel();
    final platformBattery = ref.watch(batteryRepositoryProvider);
    state = state.copyWith(
        batteryStateChangesSubscription:
            platformBattery.getBatteryChangeStream().listen((event) {
      state = state.copyWith(currentBatteryState: event);
    }));
  }
  final Ref ref;
}
