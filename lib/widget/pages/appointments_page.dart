import 'package:dot_client/widget/elements/appointment_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppointmentsPage extends StatefulWidget {
  const AppointmentsPage({Key? key}) : super(key: key);

  @override
  _AppointmentsPageState createState() => _AppointmentsPageState();
}

class _AppointmentsPageState extends State<AppointmentsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 10,
        ),
        child: DefaultTabController(
          length: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFF959595),
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  iconSize: 20,
                  onPressed: () {},
                  icon: const Icon(Icons.person),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: const InputDecoration()
                    .applyDefaults(Theme.of(context).inputDecorationTheme)
                    .copyWith(
                      labelText: "Поиск записей",
                    ),
              ),
              const SizedBox(
                height: 15,
              ),
              const TabBar(
                tabs: [
                  Tab(
                    child: Text(
                      "Предстоящие",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Прошедшие",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ListView.separated(
                      itemCount: 3,
                      itemBuilder: (context, index) => const AppointmentInfo(),
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 15,
                      ),
                    ),
                    ListView.separated(
                      itemCount: 15,
                      itemBuilder: (context, index) => const AppointmentInfo(),
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 15,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
