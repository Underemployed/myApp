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
        title: Text("ID CARD"),
        backgroundColor: Colors.red[900],
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images.png"),
                radius: 100,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[800],
            ),
            Text("Name:",style:TextStyle(letterSpacing: 2.0,fontSize: 25,color: Colors.grey[600])),
            SizedBox(height: 10,),
          Text("Unemployed",style:TextStyle(letterSpacing: 2.0,fontSize: 30,color: Colors.amber,fontWeight: FontWeight.bold)),
            SizedBox(height: 30,),
            Text("Level:",style:TextStyle(letterSpacing: 2.0,fontSize: 25,color: Colors.grey[600],)),
            SizedBox(height: 10,),
            Text("8",style:TextStyle(letterSpacing: 2.0,fontSize: 30,color: Colors.amber,fontWeight: FontWeight.bold)),
            SizedBox(height: 30,),

            Row(
              children: <Widget>[

                Icon(Icons.mail,color: Colors.redAccent,size: 30,),
                SizedBox(width: 5,),
                Text("unemployed911@gmail.com",style: TextStyle(color: Colors.white,fontSize: 20,))
              ],
            )
          ],
        ),
      ),
    );
  }
}
