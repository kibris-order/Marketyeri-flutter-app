import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:marketyeri/screens/Home/home_screen.dart';

//import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:marketyeri/service/bloc_service.dart';
import 'injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /* WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);*/
  Bloc.observer = BlocDelegateObserver();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marketyeri',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
