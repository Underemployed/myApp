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
      body:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("hello world"),
          TextButton(onPressed: (){},child: Text("click"),style: TextButton.styleFrom(backgroundColor:Colors.blueAccent,foregroundColor: Colors.deepPurpleAccent)
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30.0),
            child: Text("Container"),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},label:Text("CLicl"),icon:Icon(Icons.change_circle_outlined),backgroundColor: Colors.blueAccent[300],
      ),
      );

      /*Container(
        padding: EdgeInsets.symmetric(horizontal:25,vertical: 25),
        margin: EdgeInsets.all(30.0),
        child: Text("Hellow"),
        color: Colors.grey,


      ),//container

        child: IconButton(
          onPressed: (){
            print("AAAAAAAAAAAAAAAAAAAAA");
          },
          icon: Icon(Icons.alternate_email),
        )


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


        child:Image(
          image: AssetImage('assets/wood.jpg')
        ),

        child: Icon(
          Icons.airport_shuttle,
          color:Colors.lightBlue
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("button"),
        backgroundColor: Colors.blueAccent[200],
      ), */

  }
}
