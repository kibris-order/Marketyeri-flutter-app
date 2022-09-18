import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:marketyeri/screens/Home/home_screen.dart';

import 'authentication_flow.dart';
import 'bloc/authentication_bloc.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        if (kDebugMode) {
          print('This is a change of state $state');
        }
        if (state is AuthenticationLoggedOut) {
          Navigator.of(context).pop();
        }
        if (state is AuthenticationFailure || state is AuthenticationSuccess) {
          FlutterNativeSplash.remove();
        }
      },
      child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, authState) {
          /*  if (authState is AuthenticationInitial) {
            return const SplashScreen();
          }*/
          if (authState is AuthenticationFailure) {
            if (kDebugMode) {
              print('in getting started');
            }
            return const AuthenticationFlow();
          }
          if (authState is AuthenticationSuccess) {
            if (kDebugMode) {
              print('Authentication success works!!!!!!!!!!!!!');
            }
            return const HomeScreen();
            //return const LoginScreen();
          } else {
            return const AuthenticationFlow();
          }
        },
      ),
    );
  }
}
