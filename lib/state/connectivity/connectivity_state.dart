// Dart imports:

// Package imports:
import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
// Project imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectivity_state.freezed.dart';

@freezed
class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState({
    ConnectivityResult? currentConnectivityResult,
    StreamSubscription<ConnectivityResult?>? taskSnapshotChangesSubscription,
  }) = _ConnectivityState;
}
