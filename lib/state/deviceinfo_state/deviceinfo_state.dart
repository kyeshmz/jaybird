import 'package:freezed_annotation/freezed_annotation.dart';

part 'deviceinfo_state.freezed.dart';

@freezed
class DeviceInfoState with _$DeviceInfoState {
  const factory DeviceInfoState({
    required String computerName,
    String? version,
    String? id,
    String? versionCodename,
    String? versionId,
    String? hostName,
    String? arch,
    String? model,
    String? kernelVersion,
    int? numberOfCores,
    int? systemMemoryInMegabytes,
  }) = _DeviceInfoState;
}
// Linux
// LinuxDeviceInfo info = await deviceInfo.linuxInfo;
// print(info.name);
// print(info.version);
// print(info.id);
// print(info.versionCodename);
// print(info.versionId);
// ...
// // macOS
// MacOsDeviceInfo info = await deviceInfo.macOsInfo;
// print(info.computerName);
// print(info.hostName);
// print(info.arch);
// print(info.model);
// print(info.kernelVersion);
// ...
// // Windows
// WindowsDeviceInfo info = await deviceInfo.windowsInfo;
// print(info.computerName);
// print(info.numberOfCores);
// print(info.systemMemoryInMegabytes);