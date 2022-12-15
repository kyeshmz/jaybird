import 'dart:async';

import 'package:battery_plus/battery_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'platformbattery_state.freezed.dart';

@freezed
class DeviceBatteryState with _$DeviceBatteryState {
  const factory DeviceBatteryState({
    required BatteryState currentBatteryState,
    StreamSubscription<BatteryState?>? batteryStateChangesSubscription,
  }) = _DeviceBatteryState;
}
