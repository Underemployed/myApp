import 'package:flutter/cupertino.dart';
import 'package:myapp/pages/home/home.dart';

Widget buildPage(int index) {
  List<Widget> _widget = [
    Home(),
    Center(child: Text("Student")),
    Center(child: Text("Contacts")),
    Center(child: Text("Tools")),
  ];
  return _widget[index];
}
