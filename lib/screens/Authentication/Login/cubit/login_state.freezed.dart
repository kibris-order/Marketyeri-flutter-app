// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  bool? get loading => throw _privateConstructorUsedError;
  bool? get loginSuccess => throw _privateConstructorUsedError;
  bool? get loginFailure => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  UserCredential? get userCredentials => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {bool? loading,
      bool? loginSuccess,
      bool? loginFailure,
      String? error,
      UserCredential? userCredentials});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? loginSuccess = freezed,
    Object? loginFailure = freezed,
    Object? error = freezed,
    Object? userCredentials = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool?,
      loginSuccess: loginSuccess == freezed
          ? _value.loginSuccess
          : loginSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      loginFailure: loginFailure == freezed
          ? _value.loginFailure
          : loginFailure // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      userCredentials: userCredentials == freezed
          ? _value.userCredentials
          : userCredentials // ignore: cast_nullable_to_non_nullable
              as UserCredential?,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? loading,
      bool? loginSuccess,
      bool? loginFailure,
      String? error,
      UserCredential? userCredentials});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, (v) => _then(v as _$_LoginState));

  @override
  _$_LoginState get _value => super._value as _$_LoginState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? loginSuccess = freezed,
    Object? loginFailure = freezed,
    Object? error = freezed,
    Object? userCredentials = freezed,
  }) {
    return _then(_$_LoginState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool?,
      loginSuccess: loginSuccess == freezed
          ? _value.loginSuccess
          : loginSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      loginFailure: loginFailure == freezed
          ? _value.loginFailure
          : loginFailure // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      userCredentials: userCredentials == freezed
          ? _value.userCredentials
          : userCredentials // ignore: cast_nullable_to_non_nullable
              as UserCredential?,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {this.loading,
      this.loginSuccess,
      this.loginFailure,
      this.error,
      this.userCredentials});

  @override
  final bool? loading;
  @override
  final bool? loginSuccess;
  @override
  final bool? loginFailure;
  @override
  final String? error;
  @override
  final UserCredential? userCredentials;

  @override
  String toString() {
    return 'LoginState(loading: $loading, loginSuccess: $loginSuccess, loginFailure: $loginFailure, error: $error, userCredentials: $userCredentials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality()
                .equals(other.loginSuccess, loginSuccess) &&
            const DeepCollectionEquality()
                .equals(other.loginFailure, loginFailure) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.userCredentials, userCredentials));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(loginSuccess),
      const DeepCollectionEquality().hash(loginFailure),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(userCredentials));

  @JsonKey(ignore: true)
  @override
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final bool? loading,
      final bool? loginSuccess,
      final bool? loginFailure,
      final String? error,
      final UserCredential? userCredentials}) = _$_LoginState;

  @override
  bool? get loading;
  @override
  bool? get loginSuccess;
  @override
  bool? get loginFailure;
  @override
  String? get error;
  @override
  UserCredential? get userCredentials;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
