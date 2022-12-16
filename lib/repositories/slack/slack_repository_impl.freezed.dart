// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slack_repository_impl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SlackRepositoryImpl {
  SlackNotifier get slackNotifier => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SlackRepositoryImplCopyWith<SlackRepositoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlackRepositoryImplCopyWith<$Res> {
  factory $SlackRepositoryImplCopyWith(
          SlackRepositoryImpl value, $Res Function(SlackRepositoryImpl) then) =
      _$SlackRepositoryImplCopyWithImpl<$Res, SlackRepositoryImpl>;
  @useResult
  $Res call({SlackNotifier slackNotifier});
}

/// @nodoc
class _$SlackRepositoryImplCopyWithImpl<$Res, $Val extends SlackRepositoryImpl>
    implements $SlackRepositoryImplCopyWith<$Res> {
  _$SlackRepositoryImplCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slackNotifier = null,
  }) {
    return _then(_value.copyWith(
      slackNotifier: null == slackNotifier
          ? _value.slackNotifier
          : slackNotifier // ignore: cast_nullable_to_non_nullable
              as SlackNotifier,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SlackRepositoryImplCopyWith<$Res>
    implements $SlackRepositoryImplCopyWith<$Res> {
  factory _$$_SlackRepositoryImplCopyWith(_$_SlackRepositoryImpl value,
          $Res Function(_$_SlackRepositoryImpl) then) =
      __$$_SlackRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SlackNotifier slackNotifier});
}

/// @nodoc
class __$$_SlackRepositoryImplCopyWithImpl<$Res>
    extends _$SlackRepositoryImplCopyWithImpl<$Res, _$_SlackRepositoryImpl>
    implements _$$_SlackRepositoryImplCopyWith<$Res> {
  __$$_SlackRepositoryImplCopyWithImpl(_$_SlackRepositoryImpl _value,
      $Res Function(_$_SlackRepositoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slackNotifier = null,
  }) {
    return _then(_$_SlackRepositoryImpl(
      slackNotifier: null == slackNotifier
          ? _value.slackNotifier
          : slackNotifier // ignore: cast_nullable_to_non_nullable
              as SlackNotifier,
    ));
  }
}

/// @nodoc

class _$_SlackRepositoryImpl extends _SlackRepositoryImpl {
  const _$_SlackRepositoryImpl({required this.slackNotifier}) : super._();

  @override
  final SlackNotifier slackNotifier;

  @override
  String toString() {
    return 'SlackRepositoryImpl(slackNotifier: $slackNotifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SlackRepositoryImpl &&
            (identical(other.slackNotifier, slackNotifier) ||
                other.slackNotifier == slackNotifier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, slackNotifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SlackRepositoryImplCopyWith<_$_SlackRepositoryImpl> get copyWith =>
      __$$_SlackRepositoryImplCopyWithImpl<_$_SlackRepositoryImpl>(
          this, _$identity);
}

abstract class _SlackRepositoryImpl extends SlackRepositoryImpl {
  const factory _SlackRepositoryImpl(
      {required final SlackNotifier slackNotifier}) = _$_SlackRepositoryImpl;
  const _SlackRepositoryImpl._() : super._();

  @override
  SlackNotifier get slackNotifier;
  @override
  @JsonKey(ignore: true)
  _$$_SlackRepositoryImplCopyWith<_$_SlackRepositoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
