import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:marketyeri/data/repository/UserRepository/IUserRepository.dart';
import 'package:meta/meta.dart';

import 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final IUserRepository _userRepository;

  LoginCubit(this._userRepository) : super(const LoginState());

  void loginWithGoogle() async {
    try {
      emit(LoginState.loading());
      UserCredential credential = await _userRepository.loginWithGoogle();
      emit(LoginState.success(credential));
    } catch (e) {
      if(kDebugMode){
        print(e.toString());
      }
      emit(LoginState.failure(e.toString()));
    }
  }

  void loginWithApple() async {
    try {
      emit(LoginState.loading());
      UserCredential credential = await _userRepository.loginWithApple();
      emit(LoginState.success(credential));
    } catch (e) {
      if(kDebugMode){
        print(e.toString());
      }
      emit(LoginState.failure(e.toString()));
    }
  }

  void loginWithFacebook() async {
    try {
      emit(LoginState.loading());
      UserCredential credential = await _userRepository.loginWithFacebook();
      emit(LoginState.success(credential));
    } catch (e) {
      if(kDebugMode){
        print(e.toString());
      }
      emit(LoginState.failure(e.toString()));
    }
  }
}
