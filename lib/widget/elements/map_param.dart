import 'package:flutter/material.dart';

class MapParam extends StatefulWidget {
  final String name;
  final bool additional;

  const MapParam({required this.name, this.additional = false, Key? key})
      : super(key: key);

  @override
  State<MapParam> createState() => _MapParamState();
}

class _MapParamState extends State<MapParam> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isOpen = !isOpen;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xFF959595),
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Row(
          children: [
            Text(widget.name),
            if (widget.additional) ...[
              const SizedBox(
                width: 5,
              ),
              Icon(isOpen ? Icons.expand_less : Icons.expand_more),
            ],
          ],
        ),
      ),
    );
  }
}
