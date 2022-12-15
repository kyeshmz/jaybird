import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:network_info_plus/network_info_plus.dart';

part 'network_repository_impl.freezed.dart';

@freezed
class NetworkRepositoryImpl with _$NetworkRepositoryImpl {
  const factory NetworkRepositoryImpl({
    required NetworkInfo networkInfo,
  }) = _NetworkRepositoryImpl;

  const NetworkRepositoryImpl._();

  Future<String> getWifiName() async {
    final wifiName = await networkInfo.getWifiName();
    if (wifiName == null) {
      throw Exception('Wifi cannot be found, check GPS permissions');
    }
    return wifiName;
  }

  Future<String> getWifiIP() async {
    final wifiName = await networkInfo.getWifiIP();
    if (wifiName == null) {
      throw Exception('Wifi cannot be found, check GPS permissions');
    }
    return wifiName;
  }

  Future<String> getWifiIPv6() async {
    final wifiName = await networkInfo.getWifiIPv6();
    if (wifiName == null) {
      throw Exception('Wifi cannot be found, check GPS permissions');
    }
    return wifiName;
  }
}

final networkRepoProvider = Provider((ref) {
  return NetworkRepositoryImpl(networkInfo: NetworkInfo());
});
