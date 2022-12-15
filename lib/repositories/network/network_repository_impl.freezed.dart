// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_repository_impl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkRepositoryImpl {
  NetworkInfo get networkInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkRepositoryImplCopyWith<NetworkRepositoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkRepositoryImplCopyWith<$Res> {
  factory $NetworkRepositoryImplCopyWith(NetworkRepositoryImpl value,
          $Res Function(NetworkRepositoryImpl) then) =
      _$NetworkRepositoryImplCopyWithImpl<$Res, NetworkRepositoryImpl>;
  @useResult
  $Res call({NetworkInfo networkInfo});
}

/// @nodoc
class _$NetworkRepositoryImplCopyWithImpl<$Res,
        $Val extends NetworkRepositoryImpl>
    implements $NetworkRepositoryImplCopyWith<$Res> {
  _$NetworkRepositoryImplCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkInfo = null,
  }) {
    return _then(_value.copyWith(
      networkInfo: null == networkInfo
          ? _value.networkInfo
          : networkInfo // ignore: cast_nullable_to_non_nullable
              as NetworkInfo,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NetworkRepositoryImplCopyWith<$Res>
    implements $NetworkRepositoryImplCopyWith<$Res> {
  factory _$$_NetworkRepositoryImplCopyWith(_$_NetworkRepositoryImpl value,
          $Res Function(_$_NetworkRepositoryImpl) then) =
      __$$_NetworkRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NetworkInfo networkInfo});
}

/// @nodoc
class __$$_NetworkRepositoryImplCopyWithImpl<$Res>
    extends _$NetworkRepositoryImplCopyWithImpl<$Res, _$_NetworkRepositoryImpl>
    implements _$$_NetworkRepositoryImplCopyWith<$Res> {
  __$$_NetworkRepositoryImplCopyWithImpl(_$_NetworkRepositoryImpl _value,
      $Res Function(_$_NetworkRepositoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkInfo = null,
  }) {
    return _then(_$_NetworkRepositoryImpl(
      networkInfo: null == networkInfo
          ? _value.networkInfo
          : networkInfo // ignore: cast_nullable_to_non_nullable
              as NetworkInfo,
    ));
  }
}

/// @nodoc

class _$_NetworkRepositoryImpl extends _NetworkRepositoryImpl {
  const _$_NetworkRepositoryImpl({required this.networkInfo}) : super._();

  @override
  final NetworkInfo networkInfo;

  @override
  String toString() {
    return 'NetworkRepositoryImpl(networkInfo: $networkInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkRepositoryImpl &&
            (identical(other.networkInfo, networkInfo) ||
                other.networkInfo == networkInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NetworkRepositoryImplCopyWith<_$_NetworkRepositoryImpl> get copyWith =>
      __$$_NetworkRepositoryImplCopyWithImpl<_$_NetworkRepositoryImpl>(
          this, _$identity);
}

abstract class _NetworkRepositoryImpl extends NetworkRepositoryImpl {
  const factory _NetworkRepositoryImpl(
      {required final NetworkInfo networkInfo}) = _$_NetworkRepositoryImpl;
  const _NetworkRepositoryImpl._() : super._();

  @override
  NetworkInfo get networkInfo;
  @override
  @JsonKey(ignore: true)
  _$$_NetworkRepositoryImplCopyWith<_$_NetworkRepositoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
