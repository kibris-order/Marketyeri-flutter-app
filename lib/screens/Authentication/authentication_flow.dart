import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketyeri/screens/Authentication/bloc/authentication_bloc.dart';
import 'package:marketyeri/screens/routes.dart';

import 'Login/forgot_password.dart';
import 'Login/login_screen.dart';
import 'Onboarding/onboarding.dart';
import 'Register/register_basic_info.dart';
import 'Register/register_screen.dart';

class AuthenticationFlow extends StatefulWidget {
  const AuthenticationFlow({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => StateAuthenticationFlow();
}

class StateAuthenticationFlow extends State<AuthenticationFlow> {
  int firstBackButton =0;
  final _navigatorKey = GlobalKey<NavigatorState>();

  void _onRegisterPressed() {
    _navigatorKey.currentState!.pushNamed(routeRegister);
    setState(() {
      firstBackButton = 0;
    });
  }

  void _onLoginPressed() {
    _navigatorKey.currentState!.pushNamed(routeLogin);
    setState(() {
      firstBackButton = 0;
    });
  }

  void _onForgotPasswordPressed() {
    _navigatorKey.currentState!.pushNamed(routeForgotPassword);
    setState(() {
      firstBackButton = 0;
    });
  }

  void _onRegisterSubmit() {
    _navigatorKey.currentState!.pushNamed(routeRegisterBasicInfo);
    setState(() {
      firstBackButton = 0;
    });

  }

  void _onContinueAsGuestPressed() {
    setState(() {
      firstBackButton = 0;
    });
    context.read<AuthenticationBloc>().add(AuthenticationLoggedIn());
  }

  void _onRegisterBasicInfoComplete() {
    setState(() {
      firstBackButton = 0;
    });
    context.read<AuthenticationBloc>().add(AuthenticationLoggedIn());
  }

  void _onPasswordRecoverButtonPressed() {
    setState(() {
      firstBackButton = 0;
    });
    _navigatorKey.currentState!.pushNamed(routeOnBoarding);
  }

  Future<bool> _onBackButtonPressed() async {
    setState(() {
      firstBackButton = firstBackButton +1;
    });
    if(firstBackButton>1){
      return true;
    }
   else{
      _navigatorKey.currentState!.pushNamed(routeOnBoarding);
      return false;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: _onBackButtonPressed,
        child: Navigator(
          key: _navigatorKey,
          initialRoute: routeOnBoarding,
          onGenerateRoute: _onGenerateRoute,
        ),
      ),
    );
  }

  Route _onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeOnBoarding:
        return MaterialPageRoute<dynamic>(
          builder: (context) {
            return OnBoardingScreen(
                onContinueAsGuestPressed: _onContinueAsGuestPressed,
                onRegisterPressed: _onRegisterPressed,
                onLoginPressed:
                _onLoginPressed); //onPressed, resolve either login or register
          },
          settings: settings,
        );
      case routeLogin:
        return MaterialPageRoute<dynamic>(
          builder: (context) {
            return LoginScreen(
              onForgotPasswordPressed: _onForgotPasswordPressed,
              onRegisterPressed: _onRegisterPressed,
            );
          },
          settings: settings,
        );
      case routeRegister:
        return MaterialPageRoute<dynamic>(
          builder: (context) {
            return RegisterScreen(
              onLoginPressed: _onLoginPressed,
              onRegisterSubmit: _onRegisterSubmit,
            );
          },
          settings: settings,
        );
      case routeRegisterBasicInfo:
        return MaterialPageRoute<dynamic>(
          builder: (context) {
            return  RegisterBasicInfo(
                onRegisterBasicInfoComplete: _onRegisterBasicInfoComplete);
          },
          settings: settings,
        );
      case routeForgotPassword:
        return MaterialPageRoute<dynamic>(
          builder: (context) {
            return  ForgotPassword(
                onPasswordRecoverButtonPressed: _onPasswordRecoverButtonPressed);
          },
          settings: settings,
        );

    }

    return MaterialPageRoute<dynamic>(
      builder: (context) {
        return OnBoardingScreen(
            onContinueAsGuestPressed: _onContinueAsGuestPressed,
            onRegisterPressed: _onRegisterPressed,
            onLoginPressed:
            _onLoginPressed); //onPressed, resolve either login or register
      },
      settings: settings,
    );
  }
}
