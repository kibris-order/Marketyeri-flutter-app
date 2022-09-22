import 'package:flutter/material.dart';
import 'package:marketyeri/styles/custom_icons.dart';
import 'package:marketyeri/styles/styles.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key, required this.onPasswordRecoverButtonPressed})
      : super(key: key);
  final VoidCallback onPasswordRecoverButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.colorWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(padding: EdgeInsets.all(4)),
              const Icon(
                MarketYeriIcons.marketYeriLogo,
                size: 20,
              ),
             Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.05)),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Forgot Password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            color: Styles.colorDark),
                      ),
                      const Padding(padding: EdgeInsets.all(4)),
                      const Text(
                        'Please enter below details to ',
                        style: TextStyle(
                            color: Styles.colorDark,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                      const Text(
                        'recover your account',
                        style: TextStyle(
                            color: Styles.colorDark,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                      const Padding(padding: EdgeInsets.all(16)),
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
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.all(14)),
                  ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 4)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Styles.colorDark),
                    ),
                    onPressed: onPasswordRecoverButtonPressed,
                    child: const Text(
                      'Recover account',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(14)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
