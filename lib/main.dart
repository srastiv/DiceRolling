import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice Rolling'),
          backgroundColor: Colors.red.shade900,
        ),
        backgroundColor: Colors.red.shade700,
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int RightDiceNumber = 1;

  void diceNumber() {
    setState(
      () {
        leftDiceNumber = Random().nextInt(6) + 1;
        RightDiceNumber = Random().nextInt(6) + 1;
        print(
          'Left Dice number = $leftDiceNumber and Right Dice number = $RightDiceNumber',
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                setState(
                  () {
                    diceNumber();
                  },
                );
                debugPrint('Left button was pressed');
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$RightDiceNumber.png'),
              onPressed: () {
                setState(
                  () {
                    diceNumber();
                  },
                );
                debugPrint('Right button was pressed');
              },
            ),
          ),
        ],
      ),
    );
  }
}
