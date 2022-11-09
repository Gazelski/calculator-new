import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  final String _result = '4,92 x 420 + 69';

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: Text(
        _result,
        style: const TextStyle(fontSize: 25, color: Colors.white38,
          shadows: <Shadow>[
          Shadow(
            offset: Offset(0, 0),
            blurRadius: 8.0,
            color: Color.fromARGB(125, 0, 0, 255),
          ),
        ],),
      ),
    );
  }
}

