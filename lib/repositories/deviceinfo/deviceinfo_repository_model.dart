import 'package:freezed_annotation/freezed_annotation.dart';

part 'deviceinfo_repository_model.freezed.dart';

@freezed
class DeviceInfoRepositoryModel with _$DeviceInfoRepositoryModel {
  const factory DeviceInfoRepositoryModel({
    required String manufacturer,
    required String systemVersion,
    required String model,
    required String hardware,
    required String versionInfo,
  }) = _DeviceInfoRepositoryModel;
}
