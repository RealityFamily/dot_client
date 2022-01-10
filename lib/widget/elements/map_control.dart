import 'package:flutter/material.dart';

class MapControl extends StatelessWidget {
  final void Function() onPressed;
  final Widget content;

  const MapControl({
    required this.content,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xFF959595),
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
        iconSize: 20,
        onPressed: onPressed,
        icon: content,
      ),
    );
  }
}
