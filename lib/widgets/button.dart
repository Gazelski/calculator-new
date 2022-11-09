import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(this.text, {super.key, this.flex = 1, this.shape = const CircleBorder()});

  final String text;
  final int flex;
  final OutlinedBorder shape;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: shape,
          backgroundColor: Colors.pink.shade200.withOpacity(0.5),
          minimumSize: const Size.fromHeight(84),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 33, color: Colors.white70),
        ),
      ),
    );
  }
}