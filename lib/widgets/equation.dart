import 'package:flutter/material.dart';

class Equation extends StatelessWidget {
  const Equation(
      {super.key,
        required this.text,
        this.fontSize = 28,
        this.color = Colors.white70});

  final String? text;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    Widget? child;
    if (text != null) {
      child = Text(
        text!,
        style: TextStyle(fontSize: fontSize, color: color),
      );
    }

    return Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal, reverse: true, child: child),
    );
  }
}