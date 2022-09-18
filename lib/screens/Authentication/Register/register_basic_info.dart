import 'package:flutter/material.dart';

class RegisterBasicInfo extends StatelessWidget {
  final VoidCallback onRegisterBasicInfoComplete;
  const RegisterBasicInfo({Key? key, required this.onRegisterBasicInfoComplete}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Register basic information!'),
            ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: onRegisterBasicInfoComplete,
              child: const Text('Complete registration', style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
