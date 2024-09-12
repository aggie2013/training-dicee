import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftNum = 1;
  var rightNum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  leftNum = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftNum.png'),
              ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                setState((){
                  rightNum = Random().nextInt(6) + 1;;
                });
              },
              child: Image.asset('images/dice$rightNum.png'),
              ),
          ),
        ],
      ),
    );
  }
}