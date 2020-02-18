import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: homepage(),
      ),
    );

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Ask Me anything",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue[900],
        
      ),
      body:ball(),
    );
  }
}

class ball extends StatefulWidget {
  
  @override
  _ballState createState() => _ballState();
}

class _ballState extends State<ball> {
  int ballnum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          setState(() {
            ballnum = Random().nextInt(5)+1;
          });
        },
        child: Image.asset("images/ball$ballnum.png"),
        ),
    );
  }
}

