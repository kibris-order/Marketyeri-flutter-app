import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key, required this.onPasswordRecoverButtonPressed})
      : super(key: key);
  final VoidCallback onPasswordRecoverButtonPressed;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Forgot password works!'),
            ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: onPasswordRecoverButtonPressed,
              child: const Text('Recover password', style: TextStyle(color: Colors.white),),
            ),

          ],
        ),
      ),
    );
  }
}
