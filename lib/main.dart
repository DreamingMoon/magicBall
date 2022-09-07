import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('Ask Me Anything'),
          backgroundColor: Colors.indigo[700],
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  State<BallPage> createState() => _BallPageState();
}

int BallNumber = 1;


class _BallPageState extends State<BallPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  BallNumber = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('assets/images/ball$BallNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
