import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  final String _result = '78 x 5 + 540 x 2';

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: Text(
        _result,
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}

