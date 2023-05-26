import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
      const DicePage()
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 2;

  void changeDiceFace() {
    setState(() {
      leftdicenumber = Random().nextInt(6) + 1;
      rightdicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: const Text('DICE'),
          centerTitle: true,
          backgroundColor: Colors.blue[400],
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: TextButton(
                    onPressed: () {
                      changeDiceFace();
                    },
                    child: Image.asset('images/dice$leftdicenumber.png'),
                  )
              ),
              Expanded(
                  child: TextButton(
                    onPressed: () {
                      changeDiceFace();
                    },
                    child: Image.asset('images/dice$rightdicenumber.png'),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}