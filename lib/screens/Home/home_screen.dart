import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketyeri/screens/Authentication/bloc/authentication_bloc.dart';
import 'package:marketyeri/styles/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Test Account screen',
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.28,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: <Widget>[
                        (FirebaseAuth.instance.currentUser?.photoURL != null)
                            ? CircleAvatar(
                                radius: 45,
                                child: ClipOval(
                                    child: Image.network(
                                  FirebaseAuth.instance.currentUser?.photoURL
                                      as String,
                                  width: 120,
                                )),
                              )
                            : CharacterAvatar(
                                ch: FirebaseAuth
                                        .instance.currentUser?.displayName ??
                                    'Null',
                              ),
                        const Padding(padding: EdgeInsets.all(12)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '${FirebaseAuth.instance.currentUser?.displayName}',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                            const Padding(padding: EdgeInsets.all(2)),
                            Text(
                              '${FirebaseAuth.instance.currentUser?.phoneNumber}',
                              style: const TextStyle(
                                  fontSize: 14, color: Styles.colorTextDark),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(50)),
            ElevatedButton(
                style: TextButton.styleFrom(
                  backgroundColor: Styles.colorDark,
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
                  shape: const StadiumBorder(),
                ),
                onPressed: () {
                  HapticFeedback.vibrate();
                  context
                      .read<AuthenticationBloc>()
                      .add(AuthenticationLoggedOut(context));
                },
                child: const Text(
                  'Logout',
                  style: TextStyle(color: Styles.colorWhite),
                )),
          ],
        ),
      ),
    );
  }
}

class CharacterAvatar extends StatelessWidget {
  final String ch;

  const CharacterAvatar({Key? key, required this.ch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: Material(
        color: resolveColor(ch),
        borderRadius: BorderRadius.circular(50),
        child: Center(
          child: Text(
            ch[0],
            style: const TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

Color resolveColor(String? ch) {
  if (ch == null) return Colors.deepPurpleAccent;
  if ('ALWCNY'.characters.contains(ch[0].toUpperCase())) return Colors.green;
  if ('BMXDOZ'.characters.contains(ch[0].toUpperCase()))
    return Colors.pinkAccent;
  if ('EPGR'.characters.contains(ch[0].toUpperCase())) return Colors.blueAccent;
  if ('FQHS'.characters.contains(ch[0].toUpperCase())) return Colors.brown;
  if ('ITKV'.characters.contains(ch[0].toUpperCase()))
    return Colors.orangeAccent;
  // if('JU'.characters.contains(ch[0].toUpperCase()))
  return Colors.indigoAccent;
}
