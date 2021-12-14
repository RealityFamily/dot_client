import 'package:dot_client/widget/pages/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacementNamed(AuthPage.route);
      },
    );

    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 40,
          child: Text("Logo"),
        ),
      ),
    );
  }
}
