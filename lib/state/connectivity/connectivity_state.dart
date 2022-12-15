// Dart imports:

// Package imports:
import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

// Project imports:

part 'connectivity_state.freezed.dart';

@freezed
class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState({
    ConnectivityResult? currentConnectivityResult,
    StreamSubscription<ConnectivityResult?>? taskSnapshotChangesSubscription,
  }) = _ConnectivityState;
}
