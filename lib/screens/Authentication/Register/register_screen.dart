import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  final VoidCallback onLoginPressed;
  final VoidCallback onRegisterSubmit;

  const RegisterScreen({Key? key, required this.onLoginPressed, required this.onRegisterSubmit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Register page works!'),
            ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: onLoginPressed,
              child: const Text('Already have an account? Login', style: TextStyle(color: Colors.white),),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: onRegisterSubmit,
              child: const Text('Continue registration'),
            )
          ],
        ),
      ),
    );
  }
}
