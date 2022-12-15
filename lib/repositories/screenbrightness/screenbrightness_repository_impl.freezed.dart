// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'screenbrightness_repository_impl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScreenBrightnessRepositoryImpl {
  ScreenBrightness get screenBrightness => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScreenBrightnessRepositoryImplCopyWith<ScreenBrightnessRepositoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenBrightnessRepositoryImplCopyWith<$Res> {
  factory $ScreenBrightnessRepositoryImplCopyWith(
          ScreenBrightnessRepositoryImpl value,
          $Res Function(ScreenBrightnessRepositoryImpl) then) =
      _$ScreenBrightnessRepositoryImplCopyWithImpl<$Res,
          ScreenBrightnessRepositoryImpl>;
  @useResult
  $Res call({ScreenBrightness screenBrightness});
}

/// @nodoc
class _$ScreenBrightnessRepositoryImplCopyWithImpl<$Res,
        $Val extends ScreenBrightnessRepositoryImpl>
    implements $ScreenBrightnessRepositoryImplCopyWith<$Res> {
  _$ScreenBrightnessRepositoryImplCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenBrightness = null,
  }) {
    return _then(_value.copyWith(
      screenBrightness: null == screenBrightness
          ? _value.screenBrightness
          : screenBrightness // ignore: cast_nullable_to_non_nullable
              as ScreenBrightness,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScreenBrightnessRepositoryImplCopyWith<$Res>
    implements $ScreenBrightnessRepositoryImplCopyWith<$Res> {
  factory _$$_ScreenBrightnessRepositoryImplCopyWith(
          _$_ScreenBrightnessRepositoryImpl value,
          $Res Function(_$_ScreenBrightnessRepositoryImpl) then) =
      __$$_ScreenBrightnessRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ScreenBrightness screenBrightness});
}

/// @nodoc
class __$$_ScreenBrightnessRepositoryImplCopyWithImpl<$Res>
    extends _$ScreenBrightnessRepositoryImplCopyWithImpl<$Res,
        _$_ScreenBrightnessRepositoryImpl>
    implements _$$_ScreenBrightnessRepositoryImplCopyWith<$Res> {
  __$$_ScreenBrightnessRepositoryImplCopyWithImpl(
      _$_ScreenBrightnessRepositoryImpl _value,
      $Res Function(_$_ScreenBrightnessRepositoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenBrightness = null,
  }) {
    return _then(_$_ScreenBrightnessRepositoryImpl(
      screenBrightness: null == screenBrightness
          ? _value.screenBrightness
          : screenBrightness // ignore: cast_nullable_to_non_nullable
              as ScreenBrightness,
    ));
  }
}

/// @nodoc

class _$_ScreenBrightnessRepositoryImpl
    extends _ScreenBrightnessRepositoryImpl {
  const _$_ScreenBrightnessRepositoryImpl({required this.screenBrightness})
      : super._();

  @override
  final ScreenBrightness screenBrightness;

  @override
  String toString() {
    return 'ScreenBrightnessRepositoryImpl(screenBrightness: $screenBrightness)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenBrightnessRepositoryImpl &&
            (identical(other.screenBrightness, screenBrightness) ||
                other.screenBrightness == screenBrightness));
  }

  @override
  int get hashCode => Object.hash(runtimeType, screenBrightness);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenBrightnessRepositoryImplCopyWith<_$_ScreenBrightnessRepositoryImpl>
      get copyWith => __$$_ScreenBrightnessRepositoryImplCopyWithImpl<
          _$_ScreenBrightnessRepositoryImpl>(this, _$identity);
}

abstract class _ScreenBrightnessRepositoryImpl
    extends ScreenBrightnessRepositoryImpl {
  const factory _ScreenBrightnessRepositoryImpl(
          {required final ScreenBrightness screenBrightness}) =
      _$_ScreenBrightnessRepositoryImpl;
  const _ScreenBrightnessRepositoryImpl._() : super._();

  @override
  ScreenBrightness get screenBrightness;
  @override
  @JsonKey(ignore: true)
  _$$_ScreenBrightnessRepositoryImplCopyWith<_$_ScreenBrightnessRepositoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
