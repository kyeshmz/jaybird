import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'deviceinfo_state.dart';

class DeviceInfoStateController extends StateNotifier<DeviceInfoState> {
  DeviceInfoStateController(this.ref)
      : super(const DeviceInfoState(computerName: ''));
  final Ref ref;
}
