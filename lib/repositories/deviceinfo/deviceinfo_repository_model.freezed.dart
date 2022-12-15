// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'deviceinfo_repository_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeviceInfoRepositoryModel {
  String get manufacturer => throw _privateConstructorUsedError;
  String get systemVersion => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get hardware => throw _privateConstructorUsedError;
  String get versionInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceInfoRepositoryModelCopyWith<DeviceInfoRepositoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceInfoRepositoryModelCopyWith<$Res> {
  factory $DeviceInfoRepositoryModelCopyWith(DeviceInfoRepositoryModel value,
          $Res Function(DeviceInfoRepositoryModel) then) =
      _$DeviceInfoRepositoryModelCopyWithImpl<$Res, DeviceInfoRepositoryModel>;
  @useResult
  $Res call(
      {String manufacturer,
      String systemVersion,
      String model,
      String hardware,
      String versionInfo});
}

/// @nodoc
class _$DeviceInfoRepositoryModelCopyWithImpl<$Res,
        $Val extends DeviceInfoRepositoryModel>
    implements $DeviceInfoRepositoryModelCopyWith<$Res> {
  _$DeviceInfoRepositoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manufacturer = null,
    Object? systemVersion = null,
    Object? model = null,
    Object? hardware = null,
    Object? versionInfo = null,
  }) {
    return _then(_value.copyWith(
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      systemVersion: null == systemVersion
          ? _value.systemVersion
          : systemVersion // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      hardware: null == hardware
          ? _value.hardware
          : hardware // ignore: cast_nullable_to_non_nullable
              as String,
      versionInfo: null == versionInfo
          ? _value.versionInfo
          : versionInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceInfoRepositoryModelCopyWith<$Res>
    implements $DeviceInfoRepositoryModelCopyWith<$Res> {
  factory _$$_DeviceInfoRepositoryModelCopyWith(
          _$_DeviceInfoRepositoryModel value,
          $Res Function(_$_DeviceInfoRepositoryModel) then) =
      __$$_DeviceInfoRepositoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String manufacturer,
      String systemVersion,
      String model,
      String hardware,
      String versionInfo});
}

/// @nodoc
class __$$_DeviceInfoRepositoryModelCopyWithImpl<$Res>
    extends _$DeviceInfoRepositoryModelCopyWithImpl<$Res,
        _$_DeviceInfoRepositoryModel>
    implements _$$_DeviceInfoRepositoryModelCopyWith<$Res> {
  __$$_DeviceInfoRepositoryModelCopyWithImpl(
      _$_DeviceInfoRepositoryModel _value,
      $Res Function(_$_DeviceInfoRepositoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manufacturer = null,
    Object? systemVersion = null,
    Object? model = null,
    Object? hardware = null,
    Object? versionInfo = null,
  }) {
    return _then(_$_DeviceInfoRepositoryModel(
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      systemVersion: null == systemVersion
          ? _value.systemVersion
          : systemVersion // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      hardware: null == hardware
          ? _value.hardware
          : hardware // ignore: cast_nullable_to_non_nullable
              as String,
      versionInfo: null == versionInfo
          ? _value.versionInfo
          : versionInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeviceInfoRepositoryModel implements _DeviceInfoRepositoryModel {
  const _$_DeviceInfoRepositoryModel(
      {required this.manufacturer,
      required this.systemVersion,
      required this.model,
      required this.hardware,
      required this.versionInfo});

  @override
  final String manufacturer;
  @override
  final String systemVersion;
  @override
  final String model;
  @override
  final String hardware;
  @override
  final String versionInfo;

  @override
  String toString() {
    return 'DeviceInfoRepositoryModel(manufacturer: $manufacturer, systemVersion: $systemVersion, model: $model, hardware: $hardware, versionInfo: $versionInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceInfoRepositoryModel &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.systemVersion, systemVersion) ||
                other.systemVersion == systemVersion) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.hardware, hardware) ||
                other.hardware == hardware) &&
            (identical(other.versionInfo, versionInfo) ||
                other.versionInfo == versionInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, manufacturer, systemVersion, model, hardware, versionInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceInfoRepositoryModelCopyWith<_$_DeviceInfoRepositoryModel>
      get copyWith => __$$_DeviceInfoRepositoryModelCopyWithImpl<
          _$_DeviceInfoRepositoryModel>(this, _$identity);
}

abstract class _DeviceInfoRepositoryModel implements DeviceInfoRepositoryModel {
  const factory _DeviceInfoRepositoryModel(
      {required final String manufacturer,
      required final String systemVersion,
      required final String model,
      required final String hardware,
      required final String versionInfo}) = _$_DeviceInfoRepositoryModel;

  @override
  String get manufacturer;
  @override
  String get systemVersion;
  @override
  String get model;
  @override
  String get hardware;
  @override
  String get versionInfo;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceInfoRepositoryModelCopyWith<_$_DeviceInfoRepositoryModel>
      get copyWith => throw _privateConstructorUsedError;
}
