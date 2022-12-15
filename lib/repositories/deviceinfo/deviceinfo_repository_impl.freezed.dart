// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deviceinfo_repository_impl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeviceInfoRepositoryImpl {
  DeviceInfoPlugin get deviceInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceInfoRepositoryImplCopyWith<DeviceInfoRepositoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceInfoRepositoryImplCopyWith<$Res> {
  factory $DeviceInfoRepositoryImplCopyWith(DeviceInfoRepositoryImpl value,
          $Res Function(DeviceInfoRepositoryImpl) then) =
      _$DeviceInfoRepositoryImplCopyWithImpl<$Res, DeviceInfoRepositoryImpl>;
  @useResult
  $Res call({DeviceInfoPlugin deviceInfo});
}

/// @nodoc
class _$DeviceInfoRepositoryImplCopyWithImpl<$Res,
        $Val extends DeviceInfoRepositoryImpl>
    implements $DeviceInfoRepositoryImplCopyWith<$Res> {
  _$DeviceInfoRepositoryImplCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceInfo = null,
  }) {
    return _then(_value.copyWith(
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as DeviceInfoPlugin,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceInfoRepositoryImplCopyWith<$Res>
    implements $DeviceInfoRepositoryImplCopyWith<$Res> {
  factory _$$_DeviceInfoRepositoryImplCopyWith(
          _$_DeviceInfoRepositoryImpl value,
          $Res Function(_$_DeviceInfoRepositoryImpl) then) =
      __$$_DeviceInfoRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeviceInfoPlugin deviceInfo});
}

/// @nodoc
class __$$_DeviceInfoRepositoryImplCopyWithImpl<$Res>
    extends _$DeviceInfoRepositoryImplCopyWithImpl<$Res,
        _$_DeviceInfoRepositoryImpl>
    implements _$$_DeviceInfoRepositoryImplCopyWith<$Res> {
  __$$_DeviceInfoRepositoryImplCopyWithImpl(_$_DeviceInfoRepositoryImpl _value,
      $Res Function(_$_DeviceInfoRepositoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceInfo = null,
  }) {
    return _then(_$_DeviceInfoRepositoryImpl(
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as DeviceInfoPlugin,
    ));
  }
}

/// @nodoc

class _$_DeviceInfoRepositoryImpl extends _DeviceInfoRepositoryImpl {
  const _$_DeviceInfoRepositoryImpl({required this.deviceInfo}) : super._();

  @override
  final DeviceInfoPlugin deviceInfo;

  @override
  String toString() {
    return 'DeviceInfoRepositoryImpl(deviceInfo: $deviceInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceInfoRepositoryImpl &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deviceInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceInfoRepositoryImplCopyWith<_$_DeviceInfoRepositoryImpl>
      get copyWith => __$$_DeviceInfoRepositoryImplCopyWithImpl<
          _$_DeviceInfoRepositoryImpl>(this, _$identity);
}

abstract class _DeviceInfoRepositoryImpl extends DeviceInfoRepositoryImpl {
  const factory _DeviceInfoRepositoryImpl(
          {required final DeviceInfoPlugin deviceInfo}) =
      _$_DeviceInfoRepositoryImpl;
  const _DeviceInfoRepositoryImpl._() : super._();

  @override
  DeviceInfoPlugin get deviceInfo;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceInfoRepositoryImplCopyWith<_$_DeviceInfoRepositoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
