import 'package:dot_client/widget/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthPage extends StatefulWidget {
  static const String route = "/auth";

  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late final _formKey;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 85,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Мы соскучились!",
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 45,
              ),
              const Text(
                "Пройдите этап входа, чтобы мы с смогли с вами оставаться на связи",
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 55,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    //TODO: Сделать платформозависимую форму
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: "Логин",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Пожалуйста, введите логин";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: "Пароль",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Пожалуйста, введите логин";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 200,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Войти"),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RegisterPage.route);
                },
                child: const Text(
                  "Зарегистрироваться",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
