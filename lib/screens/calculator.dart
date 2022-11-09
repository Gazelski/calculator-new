import 'package:calculator/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:calculator/widgets/result.dart';
import 'package:calculator/widgets/history.dart';

class Calculator extends StatelessWidget {
  Calculator({super.key});

  final List<Button> buttons = <Button>[
    const Button('AC'),
    const Button('+/-'),
    const Button('%'),
    const Button('/'),

    const Button('7'),
    const Button('8'),
    const Button('9'),
    const Button('x'),

    const Button('4'),
    const Button('5'),
    const Button('6'),
    const Button('-'),

    const Button('1'),
    const Button('2'),
    const Button('3'),
    const Button('+'),

    Button('0', flex: 2, shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(80)
    )),
    const Button('.'),
    const Button('='),
  ];

  List<Widget> _sublistButtons(int start, int end) =>
      buttons.sublist(start, end).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors:[
                  Colors.pinkAccent,
                  Colors.blue,
                ],
              )
          ) ,
          child: Center(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Column(
                  children: const [
                    History(),
                    Result(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                          children: _sublistButtons(0, 4)
                      ),
                      const SizedBox(height: 10),
                      Row(
                          children: _sublistButtons(4, 8)
                      ),
                      const SizedBox(height: 10),
                      Row(
                          children: _sublistButtons(8, 12)
                      ),
                      const SizedBox(height: 10),
                      Row(
                          children: _sublistButtons(12, 16)
                      ),
                      const SizedBox(height: 10),
                      Row(
                          children: <Widget>[
                            const SizedBox(width: 0), // It doesn't look right, but whatever
                            ..._sublistButtons(16, 19)
                          ]
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}