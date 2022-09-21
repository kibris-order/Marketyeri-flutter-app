import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState(
      {bool? loading,
      bool? loginSuccess,
      bool? loginFailure,
      String? error,
      UserCredential? userCredentials}) = _LoginState;

  factory LoginState.loading() {
    return const LoginState(
      loading: true,
      loginSuccess: false,
      loginFailure: false,
    );
  }

  factory LoginState.success(UserCredential userCredential) {
    return LoginState(
        loading: false,
        loginSuccess: true,
        loginFailure: false,
        userCredentials: userCredential);
  }

  factory LoginState.failure(String error) {
    return LoginState(
      loading: false,
      loginSuccess: false,
      loginFailure: true,
      error: error,
    );
  }
}
