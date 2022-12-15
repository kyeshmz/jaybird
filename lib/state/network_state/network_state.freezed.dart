// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkState {
  String get wifiName => throw _privateConstructorUsedError;
  String get wifiIP => throw _privateConstructorUsedError;
  String get wifiIPv6 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkStateCopyWith<NetworkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkStateCopyWith<$Res> {
  factory $NetworkStateCopyWith(
          NetworkState value, $Res Function(NetworkState) then) =
      _$NetworkStateCopyWithImpl<$Res, NetworkState>;
  @useResult
  $Res call({String wifiName, String wifiIP, String wifiIPv6});
}

/// @nodoc
class _$NetworkStateCopyWithImpl<$Res, $Val extends NetworkState>
    implements $NetworkStateCopyWith<$Res> {
  _$NetworkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wifiName = null,
    Object? wifiIP = null,
    Object? wifiIPv6 = null,
  }) {
    return _then(_value.copyWith(
      wifiName: null == wifiName
          ? _value.wifiName
          : wifiName // ignore: cast_nullable_to_non_nullable
              as String,
      wifiIP: null == wifiIP
          ? _value.wifiIP
          : wifiIP // ignore: cast_nullable_to_non_nullable
              as String,
      wifiIPv6: null == wifiIPv6
          ? _value.wifiIPv6
          : wifiIPv6 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NetworkStateCopyWith<$Res>
    implements $NetworkStateCopyWith<$Res> {
  factory _$$_NetworkStateCopyWith(
          _$_NetworkState value, $Res Function(_$_NetworkState) then) =
      __$$_NetworkStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String wifiName, String wifiIP, String wifiIPv6});
}

/// @nodoc
class __$$_NetworkStateCopyWithImpl<$Res>
    extends _$NetworkStateCopyWithImpl<$Res, _$_NetworkState>
    implements _$$_NetworkStateCopyWith<$Res> {
  __$$_NetworkStateCopyWithImpl(
      _$_NetworkState _value, $Res Function(_$_NetworkState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wifiName = null,
    Object? wifiIP = null,
    Object? wifiIPv6 = null,
  }) {
    return _then(_$_NetworkState(
      wifiName: null == wifiName
          ? _value.wifiName
          : wifiName // ignore: cast_nullable_to_non_nullable
              as String,
      wifiIP: null == wifiIP
          ? _value.wifiIP
          : wifiIP // ignore: cast_nullable_to_non_nullable
              as String,
      wifiIPv6: null == wifiIPv6
          ? _value.wifiIPv6
          : wifiIPv6 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NetworkState implements _NetworkState {
  const _$_NetworkState(
      {required this.wifiName, required this.wifiIP, required this.wifiIPv6});

  @override
  final String wifiName;
  @override
  final String wifiIP;
  @override
  final String wifiIPv6;

  @override
  String toString() {
    return 'NetworkState(wifiName: $wifiName, wifiIP: $wifiIP, wifiIPv6: $wifiIPv6)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkState &&
            (identical(other.wifiName, wifiName) ||
                other.wifiName == wifiName) &&
            (identical(other.wifiIP, wifiIP) || other.wifiIP == wifiIP) &&
            (identical(other.wifiIPv6, wifiIPv6) ||
                other.wifiIPv6 == wifiIPv6));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wifiName, wifiIP, wifiIPv6);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NetworkStateCopyWith<_$_NetworkState> get copyWith =>
      __$$_NetworkStateCopyWithImpl<_$_NetworkState>(this, _$identity);
}

abstract class _NetworkState implements NetworkState {
  const factory _NetworkState(
      {required final String wifiName,
      required final String wifiIP,
      required final String wifiIPv6}) = _$_NetworkState;

  @override
  String get wifiName;
  @override
  String get wifiIP;
  @override
  String get wifiIPv6;
  @override
  @JsonKey(ignore: true)
  _$$_NetworkStateCopyWith<_$_NetworkState> get copyWith =>
      throw _privateConstructorUsedError;
}
