import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_state.freezed.dart';

@freezed
class NetworkState with _$NetworkState {
  const factory NetworkState({
    required String wifiName,
    required String wifiIP,
    required String wifiIPv6,
  }) = _NetworkState;
}
