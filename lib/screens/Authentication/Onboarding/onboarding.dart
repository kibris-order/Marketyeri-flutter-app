import 'package:flutter/material.dart';
import 'package:marketyeri/screens/Authentication/Login/forgot_password.dart';
import 'package:marketyeri/screens/Authentication/Login/login_screen.dart';
import 'package:marketyeri/screens/Authentication/Register/register_basic_info.dart';
import 'package:marketyeri/screens/Authentication/Register/register_screen.dart';
import 'package:marketyeri/screens/routes.dart';
import 'package:marketyeri/styles/custom_icons.dart';
import 'package:marketyeri/styles/styles.dart';

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
      backgroundColor: Styles.colorWhite,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.9,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/onboarding-photo-1.png'),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 0.4, 0.5, 0.6],
                  colors: [
                    Colors.white.withOpacity(0),
                    Colors.white.withOpacity(0.9),
                    Colors.white,
                    Colors.white,
                  ],
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.7,
            ),
          ),
          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Icon(MarketYeriIcons.marketYeriLogo,
                    size: 20,),
                    Expanded(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Discover the latest',
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.w500),
                            ),
                            const Text(
                              'womenswear',
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.w500),
                            ),
                            const Padding(padding: EdgeInsets.all(8)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 15,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Styles.colorDark,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                const Padding(padding: EdgeInsets.all(4)),
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Styles.colorGray,
                                      borderRadius: BorderRadius.circular(7)),
                                ),
                                const Padding(padding: EdgeInsets.all(5)),
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Styles.colorGray,
                                      borderRadius: BorderRadius.circular(7)),
                                )
                              ],
                            ),
                            const Padding(padding: EdgeInsets.all(8)),
                          ],
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: onContinueAsGuestPressed,
                      child: const Text(
                        'Continue as guest',
                        style: TextStyle(fontSize: 16, color: Styles.colorDark),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(8)),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 4),
                          side: const BorderSide(color: Styles.colorDark)
                          //backgroundColor: MaterialStateProperty.all<Color>(Styles.colorDark),
                          ),
                      onPressed: onLoginPressed,
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Styles.colorDark, fontSize: 16),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(8)),
                    ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 4)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Styles.colorDark),
                      ),
                      onPressed: onRegisterPressed,
                      child: const Text(
                        'Create Account',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(16)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
