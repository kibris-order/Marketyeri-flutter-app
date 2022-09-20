import 'package:flutter/material.dart';
import 'package:marketyeri/styles/custom_icons.dart';
import 'package:marketyeri/styles/styles.dart';

class RegisterScreen extends StatelessWidget {
  final VoidCallback onLoginPressed;
  final VoidCallback onRegisterSubmit;

  const RegisterScreen({Key? key, required this.onLoginPressed, required this.onRegisterSubmit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.colorWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(padding: EdgeInsets.all(4)),
              const Icon(
                MarketYeriIcons.marketYeriLogo,
                size: 20,
              ),
              Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.05)),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Welcome to Signup',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        color: Styles.colorDark),
                  ),
                  const Padding(padding: EdgeInsets.all(4)),
                  const Text(
                    'Please enter below details to create',
                    style: TextStyle(
                        color: Styles.colorDark,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                  const Text(
                    'to your account',
                    style: TextStyle(
                        color: Styles.colorDark,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                  const Padding(padding: EdgeInsets.all(21)),
                  Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          color: const Color(0xfffdfdfd),
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: const Color(0xffebebeb))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(padding: EdgeInsets.all(8)),
                          Icon(Icons.person, size: 24, color: Color(0xff7c7c7c),),
                          const Padding(padding: EdgeInsets.all(8)),
                          Container(
                              color: Color(0xffebebeb), height: 55, width: 1),
                          const Padding(padding: EdgeInsets.all(8)),
                          const Text(
                            'Email',
                            style: TextStyle(
                                color: Color(0xff7c7c7c),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )),
                  const Padding(padding: EdgeInsets.all(8)),
                  Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          color: const Color(0xfffdfdfd),
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: const Color(0xffebebeb))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(padding: EdgeInsets.all(8)),
                          const Icon(Icons.lock_outline, size: 24, color: Color(0xff7c7c7c)),
                          const Padding(padding: EdgeInsets.all(8)),
                          Container(
                              color: Color(0xffebebeb), height: 55, width: 1),
                          const Padding(padding: EdgeInsets.all(8)),
                          const Expanded(
                            child: Text(
                              'Password',
                              style: TextStyle(
                                  color: Color(0xff7c7c7c),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Icon(Icons.remove_red_eye_outlined, size: 24, color: Color(0xff7c7c7c)),
                          const Padding(padding: EdgeInsets.all(8)),
                        ],
                      )),
                ],
              ),
              const Padding(padding: EdgeInsets.all(16)),
              ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 4)),
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Styles.colorDark),
                ),
                onPressed: onRegisterSubmit,
                child: const Text(
                  'Register',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              const Padding(padding: EdgeInsets.all(8)),
              const Center(
                  child: Text(
                    'Or Register with',
                    style: TextStyle(
                        color: Styles.colorGray,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )),
              const Padding(padding: EdgeInsets.all(8)),
              ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 4)),
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Styles.colorDark),
                ),
                onPressed: onRegisterSubmit,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.apple,
                      color: Styles.colorWhite,
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    Text(
                      'Sign up with Apple',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(8)),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.44,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 4),
                            side: const BorderSide(color: Styles.colorDark)
                          //backgroundColor: MaterialStateProperty.all<Color>(Styles.colorDark),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/google_logo.png'),
                            const Padding(padding: EdgeInsets.all(4)),
                            const Text(
                              'Google',
                              style: TextStyle(
                                  color: Styles.colorDark, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.44,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 4),
                            side: const BorderSide(color: Styles.colorDark)
                          //backgroundColor: MaterialStateProperty.all<Color>(Styles.colorDark),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/facebook_logo.png'),
                            const Padding(padding: EdgeInsets.all(4)),
                            const Text(
                              'Facebook',
                              style: TextStyle(
                                  color: Styles.colorDark, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
              const Padding(padding: EdgeInsets.all(8)),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                  MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: onLoginPressed,
                child: const Text(
                  'Already have an account? Login',
                  style: TextStyle(color: Styles.colorDark, fontSize: 16),
                ),
              ),
              const Padding(padding: EdgeInsets.all(16)),
            ],
          ),
        ),
      ),
    );
  }
}
