import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int diceNumber1 = 1;
  int diceNumber2 = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text("PAASA"),
        centerTitle: true,
      ),
      backgroundColor: Colors.red[400],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
            child: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        diceNumber1 = Random().nextInt(6) + 1;
                        diceNumber2 = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('images/dice$diceNumber1.png')),
                flex: 1,
              ),
              SizedBox(width: 32),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        diceNumber2 = Random().nextInt(6) + 1;
                        diceNumber1 = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('images/dice$diceNumber2.png')),
                flex: 1,
              ),
            ],
          ),
        )),
      ),
    ));
  }
}
