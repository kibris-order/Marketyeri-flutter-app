import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:marketyeri/screens/Authentication/Login/cubit/login_cubit.dart';
import 'package:marketyeri/screens/Authentication/Register/cubit/register_cubit.dart';
import 'package:marketyeri/screens/Authentication/bloc/authentication_bloc.dart';
import 'package:marketyeri/screens/Home/home_screen.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:marketyeri/service/bloc_service.dart';
import 'injection.dart';
import 'screens/Authentication/authentication_screen.dart';

Future<void> main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Bloc.observer = BlocDelegateObserver();
  await configureDependencies();
  runApp(
    Phoenix(
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthenticationBloc>(
            create: (context) =>
                locator<AuthenticationBloc>()..add(AuthenticationStarted()),
          ),
          BlocProvider<RegisterCubit>(
            create: (context) => locator<RegisterCubit>(),
          ),
          BlocProvider<LoginCubit>(
            create: (context) => locator<LoginCubit>(),
          )
        ],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marketyeri',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const Authentication(),
    );
  }
}
