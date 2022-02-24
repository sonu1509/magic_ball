import 'dart:math';
import 'package:flutter/material.dart';
void main(){
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Magic Ball',style: TextStyle(
            fontWeight: FontWeight.bold,
              color: Colors.black
          ),),
          backgroundColor: Colors.blueGrey[600],
        ),
        body: BallPage(),
      ),
    ),
  );
}
class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}
class _BallPageState extends State<BallPage> {
  int ballNumber = 1;
  void changeBallFace(){
    ballNumber = Random().nextInt(5)+1;
    print('$ballNumber');
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child:  FlatButton(
              onPressed: (){
                setState(() {
                  changeBallFace();
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),

    );
  }
}


