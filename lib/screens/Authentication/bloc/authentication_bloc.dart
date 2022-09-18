import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:injectable/injectable.dart';
import 'package:marketyeri/data/repository/UserRepository/IUserRepository.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final IUserRepository _userRepository;

  AuthenticationBloc(this._userRepository) : super(AuthenticationInitial()) {
    on<AuthenticationStarted>((event, emit) async {
      await Future.delayed(const Duration(seconds: 2));
      final isSignedIn = _userRepository.isSignedIn();
      if (isSignedIn) {
        emit(AuthenticationSuccess());
      } else {
        emit(AuthenticationFailure());
      }
    });

    on<AuthenticationLoggedIn>((event, emit) async {
      try {
        //final isSignedIn = _userRepository.isSignedIn();
        bool isSignedIn = true;
        if (isSignedIn) {
          emit(AuthenticationSuccess());
        } else {
          emit(AuthenticationFailure());
        }
      } catch (e) {
        emit(AuthenticationFailure());
      }
    });

    on<AuthenticationLoggedOut>((event, emit) async {
      await _userRepository.signOut();
      emit(AuthenticationFailure());
      Phoenix.rebirth(event.context);
    });
  }
}
