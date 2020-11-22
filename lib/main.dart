import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Center(child: Text('Ask me Anything')),
        backgroundColor: Colors.amberAccent,
      ),
      body: Ball(),
    ),
  ));
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      ballNumber = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image.asset('images/ball$ballNumber.png'))),
        ],
      ),
    );
  }
}
