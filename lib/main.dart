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
    var num ='one';
    return Scaffold(
      appBar: AppBar(
        title:Text("AppBar"),
        centerTitle: true,
        leading:IconButton(onPressed: (){},icon: Icon(Icons.home),),
          actions: [IconButton(onPressed:(){},icon:Icon(Icons.call)),IconButton(onPressed: (){}, icon:Icon(Icons.more_vert_sharp))],
    ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end
        ,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.cyan,
            child: Text("One"),
          ),Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.amber,
            child: Text("Two"),
          ),Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.pinkAccent,
            child: Text("Three"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},label:Text("CLicl"),icon:Icon(Icons.change_circle_outlined),backgroundColor: Colors.blueAccent[300],
      ),
      );



  }
}
