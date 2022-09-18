import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final VoidCallback onRegisterPressed;
  final VoidCallback onForgotPasswordPressed;

  const LoginScreen({
    Key? key,
    required this.onRegisterPressed,
    required this.onForgotPasswordPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Login page works!'),
            ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: onRegisterPressed,
              child: const Text('Already have an account? Register', style: TextStyle(color: Colors.white),),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: onForgotPasswordPressed,
              child: const Text('Forgot password'),
            )
          ],
        ),
      ),
    );
  }
}
