import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.black87,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 4;
  int rightDiceNumber = 3;

  void ChangeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      print('the nmber os $leftDiceNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: FlatButton(
              onPressed: () {
                ChangeDiceFace();
              },
              child: Image.asset('Images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            flex: 2,
            child: FlatButton(
              onPressed: () {
                ChangeDiceFace();
              },
              child: Image.asset('Images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
