import 'dart:math';

import 'package:flutter/material.dart';

void randomize() {
  return Random().nextInt(6) + 1;
}

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    rightDiceNumber = randomize();
                    leftDiceNumber = randomize();
                    print(
                        'Right Button is pressed. New Value = $leftDiceNumber');
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    rightDiceNumber = randomize();
                    leftDiceNumber = randomize();
                  });
                  print(
                      'Right Button is pressed. New Value = $rightDiceNumber');
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
