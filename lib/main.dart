import 'dart:ffi';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
  ));
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("AppBar"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent[300],
    ),
      body:Center(
        /*
        child: Text(
          "body",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.grey[900],
              fontFamily: 'IndieFlower'),
        ),
      ),

      */
        child:Image(
          image: AssetImage('assets/wood.jpg')
        ),


      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("button"),
        backgroundColor: Colors.blueAccent[200],
      ),
    );
  }
}
