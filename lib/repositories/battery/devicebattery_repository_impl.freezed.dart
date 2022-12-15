// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'devicebattery_repository_impl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeviceBatteryRepositoryImpl {
  Battery get battery => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceBatteryRepositoryImplCopyWith<DeviceBatteryRepositoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceBatteryRepositoryImplCopyWith<$Res> {
  factory $DeviceBatteryRepositoryImplCopyWith(
          DeviceBatteryRepositoryImpl value,
          $Res Function(DeviceBatteryRepositoryImpl) then) =
      _$DeviceBatteryRepositoryImplCopyWithImpl<$Res,
          DeviceBatteryRepositoryImpl>;
  @useResult
  $Res call({Battery battery});
}

/// @nodoc
class _$DeviceBatteryRepositoryImplCopyWithImpl<$Res,
        $Val extends DeviceBatteryRepositoryImpl>
    implements $DeviceBatteryRepositoryImplCopyWith<$Res> {
  _$DeviceBatteryRepositoryImplCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? battery = null,
  }) {
    return _then(_value.copyWith(
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as Battery,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceBatteryRepositoryImplCopyWith<$Res>
    implements $DeviceBatteryRepositoryImplCopyWith<$Res> {
  factory _$$_DeviceBatteryRepositoryImplCopyWith(
          _$_DeviceBatteryRepositoryImpl value,
          $Res Function(_$_DeviceBatteryRepositoryImpl) then) =
      __$$_DeviceBatteryRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Battery battery});
}

/// @nodoc
class __$$_DeviceBatteryRepositoryImplCopyWithImpl<$Res>
    extends _$DeviceBatteryRepositoryImplCopyWithImpl<$Res,
        _$_DeviceBatteryRepositoryImpl>
    implements _$$_DeviceBatteryRepositoryImplCopyWith<$Res> {
  __$$_DeviceBatteryRepositoryImplCopyWithImpl(
      _$_DeviceBatteryRepositoryImpl _value,
      $Res Function(_$_DeviceBatteryRepositoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? battery = null,
  }) {
    return _then(_$_DeviceBatteryRepositoryImpl(
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as Battery,
    ));
  }
}

/// @nodoc

class _$_DeviceBatteryRepositoryImpl extends _DeviceBatteryRepositoryImpl {
  const _$_DeviceBatteryRepositoryImpl({required this.battery}) : super._();

  @override
  final Battery battery;

  @override
  String toString() {
    return 'DeviceBatteryRepositoryImpl(battery: $battery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceBatteryRepositoryImpl &&
            (identical(other.battery, battery) || other.battery == battery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, battery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceBatteryRepositoryImplCopyWith<_$_DeviceBatteryRepositoryImpl>
      get copyWith => __$$_DeviceBatteryRepositoryImplCopyWithImpl<
          _$_DeviceBatteryRepositoryImpl>(this, _$identity);
}

abstract class _DeviceBatteryRepositoryImpl
    extends DeviceBatteryRepositoryImpl {
  const factory _DeviceBatteryRepositoryImpl({required final Battery battery}) =
      _$_DeviceBatteryRepositoryImpl;
  const _DeviceBatteryRepositoryImpl._() : super._();

  @override
  Battery get battery;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceBatteryRepositoryImplCopyWith<_$_DeviceBatteryRepositoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
