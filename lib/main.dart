import 'package:dot_client/widget/pages/auth_page.dart';
import 'package:dot_client/widget/pages/register_page.dart';
import 'package:dot_client/widget/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      routes: {
        "/": (context) => const SplashPage(),
        AuthPage.route: (context) => const AuthPage(),
        RegisterPage.route: (context) => RegisterPage(),
      },
    );
  }
}
