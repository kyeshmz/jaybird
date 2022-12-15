import 'package:battery_plus/battery_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'devicebattery_repository_impl.freezed.dart';

@freezed
class DeviceBatteryRepositoryImpl with _$DeviceBatteryRepositoryImpl {
  const factory DeviceBatteryRepositoryImpl({
    required Battery battery,
  }) = _DeviceBatteryRepositoryImpl;

  const DeviceBatteryRepositoryImpl._();

  Future<int> getBatteryLevel() async {
    return await battery.batteryLevel;
  }

  Stream<BatteryState> getBatteryChangeStream() {
    return battery.onBatteryStateChanged;
  }
}

final batteryRepositoryProvider = Provider((ref) {
  return DeviceBatteryRepositoryImpl(battery: Battery());
});
