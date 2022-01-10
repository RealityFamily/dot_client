import 'dart:math';

import 'package:dot_client/widget/elements/map_control.dart';
import 'package:dot_client/widget/elements/map_param.dart';
import 'package:dot_client/widget/pages/search_page.dart';
import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.lightBlue,
        ),
        Positioned(
          top: MediaQuery.of(context).viewPadding.top + 10,
          left: 15,
          right: 15,
          child: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (_) => SearchPage(
                  topMargin: MediaQuery.of(context).padding.top,
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: const [
                  Icon(Icons.search),
                  SizedBox(width: 10),
                  Text("Введите название"),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          height: 40,
          bottom: 10,
          left: 15,
          right: 15,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => MapParam(
              name: index.toString(),
              additional: Random().nextBool(),
            ),
          ),
        ),
        Positioned(
          right: 15,
          top: MediaQuery.of(context).viewPadding.top + 60,
          bottom: MediaQuery.of(context).padding.bottom + 60,
          width: 40,
          child: Column(
            children: [
              MapControl(
                content: const Icon(Icons.menu),
                onPressed: () {},
              ),
              Expanded(
                child: Container(),
              ),
              MapControl(
                content: const Icon(Icons.add),
                onPressed: () {},
              ),
              MapControl(
                content: const Icon(Icons.remove),
                onPressed: () {},
              ),
              Expanded(
                child: Container(),
              ),
              MapControl(
                content: const Icon(Icons.gps_fixed),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
