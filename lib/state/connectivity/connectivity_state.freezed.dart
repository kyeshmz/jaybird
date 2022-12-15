// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connectivity_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectivityState {
  ConnectivityResult? get currentConnectivityResult =>
      throw _privateConstructorUsedError;
  StreamSubscription<ConnectivityResult?>?
      get taskSnapshotChangesSubscription => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectivityStateCopyWith<ConnectivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityStateCopyWith<$Res> {
  factory $ConnectivityStateCopyWith(
          ConnectivityState value, $Res Function(ConnectivityState) then) =
      _$ConnectivityStateCopyWithImpl<$Res, ConnectivityState>;
  @useResult
  $Res call(
      {ConnectivityResult? currentConnectivityResult,
      StreamSubscription<ConnectivityResult?>?
          taskSnapshotChangesSubscription});
}

/// @nodoc
class _$ConnectivityStateCopyWithImpl<$Res, $Val extends ConnectivityState>
    implements $ConnectivityStateCopyWith<$Res> {
  _$ConnectivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentConnectivityResult = freezed,
    Object? taskSnapshotChangesSubscription = freezed,
  }) {
    return _then(_value.copyWith(
      currentConnectivityResult: freezed == currentConnectivityResult
          ? _value.currentConnectivityResult
          : currentConnectivityResult // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult?,
      taskSnapshotChangesSubscription: freezed ==
              taskSnapshotChangesSubscription
          ? _value.taskSnapshotChangesSubscription
          : taskSnapshotChangesSubscription // ignore: cast_nullable_to_non_nullable
              as StreamSubscription<ConnectivityResult?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConnectivityStateCopyWith<$Res>
    implements $ConnectivityStateCopyWith<$Res> {
  factory _$$_ConnectivityStateCopyWith(_$_ConnectivityState value,
          $Res Function(_$_ConnectivityState) then) =
      __$$_ConnectivityStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ConnectivityResult? currentConnectivityResult,
      StreamSubscription<ConnectivityResult?>?
          taskSnapshotChangesSubscription});
}

/// @nodoc
class __$$_ConnectivityStateCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res, _$_ConnectivityState>
    implements _$$_ConnectivityStateCopyWith<$Res> {
  __$$_ConnectivityStateCopyWithImpl(
      _$_ConnectivityState _value, $Res Function(_$_ConnectivityState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentConnectivityResult = freezed,
    Object? taskSnapshotChangesSubscription = freezed,
  }) {
    return _then(_$_ConnectivityState(
      currentConnectivityResult: freezed == currentConnectivityResult
          ? _value.currentConnectivityResult
          : currentConnectivityResult // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult?,
      taskSnapshotChangesSubscription: freezed ==
              taskSnapshotChangesSubscription
          ? _value.taskSnapshotChangesSubscription
          : taskSnapshotChangesSubscription // ignore: cast_nullable_to_non_nullable
              as StreamSubscription<ConnectivityResult?>?,
    ));
  }
}

/// @nodoc

class _$_ConnectivityState implements _ConnectivityState {
  const _$_ConnectivityState(
      {this.currentConnectivityResult, this.taskSnapshotChangesSubscription});

  @override
  final ConnectivityResult? currentConnectivityResult;
  @override
  final StreamSubscription<ConnectivityResult?>?
      taskSnapshotChangesSubscription;

  @override
  String toString() {
    return 'ConnectivityState(currentConnectivityResult: $currentConnectivityResult, taskSnapshotChangesSubscription: $taskSnapshotChangesSubscription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectivityState &&
            (identical(other.currentConnectivityResult,
                    currentConnectivityResult) ||
                other.currentConnectivityResult == currentConnectivityResult) &&
            (identical(other.taskSnapshotChangesSubscription,
                    taskSnapshotChangesSubscription) ||
                other.taskSnapshotChangesSubscription ==
                    taskSnapshotChangesSubscription));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentConnectivityResult, taskSnapshotChangesSubscription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectivityStateCopyWith<_$_ConnectivityState> get copyWith =>
      __$$_ConnectivityStateCopyWithImpl<_$_ConnectivityState>(
          this, _$identity);
}

abstract class _ConnectivityState implements ConnectivityState {
  const factory _ConnectivityState(
      {final ConnectivityResult? currentConnectivityResult,
      final StreamSubscription<ConnectivityResult?>?
          taskSnapshotChangesSubscription}) = _$_ConnectivityState;

  @override
  ConnectivityResult? get currentConnectivityResult;
  @override
  StreamSubscription<ConnectivityResult?>? get taskSnapshotChangesSubscription;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectivityStateCopyWith<_$_ConnectivityState> get copyWith =>
      throw _privateConstructorUsedError;
}
