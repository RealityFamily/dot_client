import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum RegisterState { login, profile }

class RegisterPage extends StatefulWidget {
  static const String route = "/register";

  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  RegisterState state = RegisterState.login;

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            (state == RegisterState.profile
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        state = RegisterState.login;
                      });
                    },
                    icon: const Icon(Icons.arrow_back))
                : Container()),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 85,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    (state == RegisterState.login
                        ? "Добро Пожаловать"
                        : "Создание профиля"),
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Text(
                    (state == RegisterState.login
                        ? "Пройдите этап регистрации, чтобы мы могли держать с вами связь"
                        : "Отлично, теперь осталось создать профиль"),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        ...(state == RegisterState.login
                            ? [
                                TextFormField(
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: "Email",
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: "Пароль",
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: "Подтвердить пароль",
                                  ),
                                ),
                              ]
                            : [
                                TextFormField(
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: "Имя",
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: "Фамилия",
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: "Пол",
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: "Дата рождения",
                                  ),
                                ),
                              ]),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: (state == RegisterState.login
                                  ? const Color.fromRGBO(103, 103, 103, 1)
                                  : const Color.fromRGBO(196, 196, 196, 1)),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: (state == RegisterState.profile
                                  ? const Color.fromRGBO(103, 103, 103, 1)
                                  : const Color.fromRGBO(196, 196, 196, 1)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              state = RegisterState.profile;
                            });
                          },
                          child: Text(
                            (state == RegisterState.login
                                ? "Далее"
                                : "Начнем пользоваться"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
