// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_analytics_repository_impl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirebaseAnalyticsRepositoryImpl {
  FirebaseAnalytics get faInstance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirebaseAnalyticsRepositoryImplCopyWith<FirebaseAnalyticsRepositoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseAnalyticsRepositoryImplCopyWith<$Res> {
  factory $FirebaseAnalyticsRepositoryImplCopyWith(
          FirebaseAnalyticsRepositoryImpl value,
          $Res Function(FirebaseAnalyticsRepositoryImpl) then) =
      _$FirebaseAnalyticsRepositoryImplCopyWithImpl<$Res,
          FirebaseAnalyticsRepositoryImpl>;
  @useResult
  $Res call({FirebaseAnalytics faInstance});
}

/// @nodoc
class _$FirebaseAnalyticsRepositoryImplCopyWithImpl<$Res,
        $Val extends FirebaseAnalyticsRepositoryImpl>
    implements $FirebaseAnalyticsRepositoryImplCopyWith<$Res> {
  _$FirebaseAnalyticsRepositoryImplCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faInstance = null,
  }) {
    return _then(_value.copyWith(
      faInstance: null == faInstance
          ? _value.faInstance
          : faInstance // ignore: cast_nullable_to_non_nullable
              as FirebaseAnalytics,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FirebaseAnalyticsRepositoryImplCopyWith<$Res>
    implements $FirebaseAnalyticsRepositoryImplCopyWith<$Res> {
  factory _$$_FirebaseAnalyticsRepositoryImplCopyWith(
          _$_FirebaseAnalyticsRepositoryImpl value,
          $Res Function(_$_FirebaseAnalyticsRepositoryImpl) then) =
      __$$_FirebaseAnalyticsRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FirebaseAnalytics faInstance});
}

/// @nodoc
class __$$_FirebaseAnalyticsRepositoryImplCopyWithImpl<$Res>
    extends _$FirebaseAnalyticsRepositoryImplCopyWithImpl<$Res,
        _$_FirebaseAnalyticsRepositoryImpl>
    implements _$$_FirebaseAnalyticsRepositoryImplCopyWith<$Res> {
  __$$_FirebaseAnalyticsRepositoryImplCopyWithImpl(
      _$_FirebaseAnalyticsRepositoryImpl _value,
      $Res Function(_$_FirebaseAnalyticsRepositoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faInstance = null,
  }) {
    return _then(_$_FirebaseAnalyticsRepositoryImpl(
      faInstance: null == faInstance
          ? _value.faInstance
          : faInstance // ignore: cast_nullable_to_non_nullable
              as FirebaseAnalytics,
    ));
  }
}

/// @nodoc

class _$_FirebaseAnalyticsRepositoryImpl
    extends _FirebaseAnalyticsRepositoryImpl {
  const _$_FirebaseAnalyticsRepositoryImpl({required this.faInstance})
      : super._();

  @override
  final FirebaseAnalytics faInstance;

  @override
  String toString() {
    return 'FirebaseAnalyticsRepositoryImpl(faInstance: $faInstance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirebaseAnalyticsRepositoryImpl &&
            (identical(other.faInstance, faInstance) ||
                other.faInstance == faInstance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, faInstance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirebaseAnalyticsRepositoryImplCopyWith<
          _$_FirebaseAnalyticsRepositoryImpl>
      get copyWith => __$$_FirebaseAnalyticsRepositoryImplCopyWithImpl<
          _$_FirebaseAnalyticsRepositoryImpl>(this, _$identity);
}

abstract class _FirebaseAnalyticsRepositoryImpl
    extends FirebaseAnalyticsRepositoryImpl {
  const factory _FirebaseAnalyticsRepositoryImpl(
          {required final FirebaseAnalytics faInstance}) =
      _$_FirebaseAnalyticsRepositoryImpl;
  const _FirebaseAnalyticsRepositoryImpl._() : super._();

  @override
  FirebaseAnalytics get faInstance;
  @override
  @JsonKey(ignore: true)
  _$$_FirebaseAnalyticsRepositoryImplCopyWith<
          _$_FirebaseAnalyticsRepositoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
