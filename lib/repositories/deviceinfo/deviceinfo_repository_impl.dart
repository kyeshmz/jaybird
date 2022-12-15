import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'deviceinfo_repository_model.dart';

part 'deviceinfo_repository_impl.freezed.dart';

@freezed
class DeviceInfoRepositoryImpl with _$DeviceInfoRepositoryImpl {
  const factory DeviceInfoRepositoryImpl({
    required DeviceInfoPlugin deviceInfo,
  }) = _DeviceInfoRepositoryImpl;
  const DeviceInfoRepositoryImpl._();

  Future<DeviceInfoRepositoryModel> getPlatformDeviceInfo() async {
    try {
      if (Platform.isAndroid) {
        return readAndroidDeviceInfo(await deviceInfo.androidInfo);
      } else {
        return readIosDeviceInfo(await deviceInfo.iosInfo);
      }
    } on PlatformException {
      rethrow;
    }
  }

  DeviceInfoRepositoryModel readAndroidDeviceInfo(AndroidDeviceInfo build) {
    return DeviceInfoRepositoryModel(
      manufacturer: build.manufacturer,
      systemVersion:
          '${build.version.sdkInt} / ${build.version.release} / ${build.version.securityPatch}',
      model: build.model,
      hardware: build.model,
      versionInfo: build.bootloader,
    );
  }

  DeviceInfoRepositoryModel readIosDeviceInfo(IosDeviceInfo build) {
    return DeviceInfoRepositoryModel(
      manufacturer: 'Apple',
      systemVersion: '${build.systemName} / ${build.systemVersion}',
      model: '${build.model}',
      hardware: '${build.name}',
      versionInfo: '${build.utsname.version}',
    );
  }

  Map<String, dynamic> readAndroidBuildData(AndroidDeviceInfo build) {
    return <String, dynamic>{
      'version.securityPatch': build.version.securityPatch,
      'version.sdkInt': build.version.sdkInt,
      'version.release': build.version.release,
      'version.previewSdkInt': build.version.previewSdkInt,
      'version.incremental': build.version.incremental,
      'version.codename': build.version.codename,
      'version.baseOS': build.version.baseOS,
      'board': build.board,
      'bootloader': build.bootloader,
      'brand': build.brand,
      'device': build.device,
      'display': build.display,
      'fingerprint': build.fingerprint,
      'hardware': build.hardware,
      'host': build.host,
      'id': build.id,
      'manufacturer': build.manufacturer,
      'model': build.model,
      'product': build.product,
      'supported32BitAbis': build.supported32BitAbis,
      'supported64BitAbis': build.supported64BitAbis,
      'supportedAbis': build.supportedAbis,
      'tags': build.tags,
      'type': build.type,
      'isPhysicalDevice': build.isPhysicalDevice,
      'systemFeatures': build.systemFeatures,
      'displaySizeInches':
          (build.displayMetrics.sizeInches * 10).roundToDouble() / 10,
      'displayWidthPixels': build.displayMetrics.widthPx,
      'displayWidthInches': build.displayMetrics.widthInches,
      'displayHeightPixels': build.displayMetrics.heightPx,
      'displayHeightInches': build.displayMetrics.heightInches,
      'displayXDpi': build.displayMetrics.xDpi,
      'displayYDpi': build.displayMetrics.yDpi,
    };
  }

  Map<String, dynamic> readIosBuildData(IosDeviceInfo data) {
    return <String, dynamic>{
      'name': data.name,
      'systemName': data.systemName,
      'systemVersion': data.systemVersion,
      'model': data.model,
      'localizedModel': data.localizedModel,
      'identifierForVendor': data.identifierForVendor,
      'isPhysicalDevice': data.isPhysicalDevice,
      'utsname.sysname:': data.utsname.sysname,
      'utsname.nodename:': data.utsname.nodename,
      'utsname.release:': data.utsname.release,
      'utsname.version:': data.utsname.version,
      'utsname.machine:': data.utsname.machine,
    };
  }
}

final deviceInfoRepositoryProvider = Provider((ref) {
  final devicePlugin = ref.watch(deviceInfoProvider);
  return DeviceInfoRepositoryImpl(deviceInfo: devicePlugin);
});

final deviceInfoProvider = Provider((ref) {
  return DeviceInfoPlugin();
});
