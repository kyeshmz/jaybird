import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pochi/repositories/network/network_repository_impl.dart';
import 'package:pochi/state/network_state/network_state.dart';

class NetworkStateController extends StateNotifier<NetworkState> {
  NetworkStateController(this.ref)
      : super(const NetworkState(wifiName: '', wifiIP: '', wifiIPv6: ''));
  final Ref ref;

  Future<void> getWifiInfo() async {
    final networkRepo = ref.watch(networkRepoProvider);
    await Future.wait([
      networkRepo.getWifiName(),
      networkRepo.getWifiIP(),
      networkRepo.getWifiIPv6(),
    ], eagerError: true)
        .then((value) {
      state = state.copyWith(
          wifiName: value[0], wifiIP: value[1], wifiIPv6: value[2]);
    }).onError((error, stackTrace) {
      print(error);
      throw Exception(error);
    });
  }
}

final networkStateProvider =
    StateNotifierProvider<NetworkStateController, NetworkState>((ref) {
  return NetworkStateController(ref);
});
