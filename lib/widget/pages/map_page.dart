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
          top: MediaQuery.of(context).padding.top + 10,
          left: 15,
          right: 15,
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
        Positioned(
          height: 40,
          bottom: 10,
          left: 15,
          right: 15,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 5,
              ),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: index % 2 == 0 ? Colors.red : Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: Text("Параметр $index"),
            ),
          ),
        ),
        Positioned(
          child: Column(
            children: [],
          ),
        ),
      ],
    );
  }
}
