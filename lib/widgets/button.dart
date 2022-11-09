import 'package:flutter/material.dart';

class Button extends StatelessWidget {
   Button(this.text,
      {super.key,
        this.flex = 1,
        this.shape = const CircleBorder(),
        this.onPressed,
        this.foregroundColor,
        this.backgroundColor,
        this.fontSize = 28});

  final String text;
  final int flex;
  final OutlinedBorder shape;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final double? fontSize;
  void Function(Button)? onPressed;

  Button withOnPressedIfNull(void Function(Button)? onPressed) {
    this.onPressed = this.onPressed ?? onPressed;
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: ElevatedButton(
          onPressed: () {
            onPressed?.call(this);
          },
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
      ),
    );
  }
}