import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizza_app_bloc/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:pizza_app_bloc/screens/auth/ui/welcome_screen.dart';
import 'package:pizza_app_bloc/screens/home/ui/home_screen.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pizza Delivery",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          surface: Colors.grey.shade200,
          onSurface: Colors.black,
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
      ),
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: ((context, state) {
          if (state.status == AuthenticationStatus.authenticated) {
            return HomeScreen();
          } else {
            return WelcomeScreen();
          }
        }),
      ),
    );
  }
}
