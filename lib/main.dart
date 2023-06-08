import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('DICEE'),
          backgroundColor: Colors.blue,
        ),
        body: Home(),
      ),
    ),
  );
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Random number generator
  static int getRandom() => Random().nextInt(5) + 1;

  int first_player = 1;
  int seconde_player = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: TextButton(
              style: TextButton.styleFrom(),
              child: Image.asset("images/dice$seconde_player.png", width: 100),
              onPressed: () => setState(() => seconde_player = getRandom()),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: TextButton(
              style: TextButton.styleFrom(),
              child: Image.asset("images/dice$first_player.png", width: 100),
              onPressed: () => setState(() => first_player = getRandom()),
            ),
          ),
        ),
      ]),
    );
  }
}
