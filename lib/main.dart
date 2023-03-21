import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(BallPage());
 
class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
              title: Center(
                child: Text('Ask Me Anything',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
    ),
              ),
              backgroundColor: Colors.blue
          ),
          body: SafeArea(
            child: Ball()
          ),
        ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            randomize();
          });
          print('ballNumber: $ballNumber');
        },
        child: Image.asset('images/ball$ballNumber.png',),
      ),
    );
  }

  void randomize() {
    ballNumber = Random().nextInt(5) + 1;
  }
}


