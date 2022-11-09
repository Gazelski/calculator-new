
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  final String _result = '2137';

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: Text(
        _result,
        style: const TextStyle(fontSize: 92, color: Colors.white70),
      ),
    );
  }
}