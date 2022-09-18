import 'package:flutter/material.dart';
import 'package:marketyeri/screens/Authentication/Login/forgot_password.dart';
import 'package:marketyeri/screens/Authentication/Login/login_screen.dart';
import 'package:marketyeri/screens/Authentication/Register/register_basic_info.dart';
import 'package:marketyeri/screens/Authentication/Register/register_screen.dart';
import 'package:marketyeri/screens/routes.dart';

class OnBoardingScreen extends StatelessWidget {
  final VoidCallback onLoginPressed;
  final VoidCallback onContinueAsGuestPressed;
  final VoidCallback onRegisterPressed;

  const OnBoardingScreen({
    Key? key,
    required this.onLoginPressed,
    required this.onContinueAsGuestPressed,
    required this.onRegisterPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('On Boarding works'),
            ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: onLoginPressed,
              child: const Text('Login', style: TextStyle(color: Colors.white),),
            ),
            ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: onRegisterPressed,
              child: const Text('Register', style: TextStyle(color: Colors.white),),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: onContinueAsGuestPressed,
              child: const Text('Continue as guest'),
            )
          ],
        ),
      ),
    );
  }
}
