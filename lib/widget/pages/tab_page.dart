import 'package:dot_client/widget/pages/map_page.dart';
import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  static const String route = "/main-page";

  const TabPage({Key? key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int? _selectedPage;
  final _pages = [
    const MapPage(),
  ];

  @override
  Widget build(BuildContext context) {
    _selectedPage ??= ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      body:
          _selectedPage! < _pages.length ? _pages[_selectedPage!] : Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage!,
        onTap: (value) => setState(
          () {
            _selectedPage = value;
          },
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map,
            ),
            label: "Карта",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.event,
            ),
            label: "Мои записи",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
            ),
            label: "Чаты",
          ),
        ],
      ),
    );
  }
}
