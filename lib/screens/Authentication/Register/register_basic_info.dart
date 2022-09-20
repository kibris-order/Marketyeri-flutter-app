import 'package:flutter/material.dart';
import 'package:marketyeri/styles/custom_icons.dart';
import 'package:marketyeri/styles/styles.dart';

class RegisterBasicInfo extends StatelessWidget {
  final VoidCallback onRegisterBasicInfoComplete;
  const RegisterBasicInfo({Key? key, required this.onRegisterBasicInfoComplete}) : super(key: key);


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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
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
                            children: const [
                              Padding(padding: EdgeInsets.all(8)),
                              Text(
                                'First name',
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
                            children: const [
                              Padding(padding: EdgeInsets.all(8)),
                              Text(
                                'Last name',
                                style: TextStyle(
                                    color: Color(0xff7c7c7c),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
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
                    onPressed: onRegisterBasicInfoComplete,
                    child: const Text(
                      'Complete',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(16)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
