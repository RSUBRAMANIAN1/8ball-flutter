import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home:BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),
    );
  }
}
class Ball extends StatefulWidget {
  Ball({Key key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
 int ran = 1;
 func()
 {
   setState(() {
     ran= Random().nextInt(5)+1;
   });
 }
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: func,
          child: Container(
        alignment: Alignment.center,
         child: Image.asset('images/ball$ran.png'),
      ),
    );
  }
}