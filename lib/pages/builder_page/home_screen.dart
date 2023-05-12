import 'package:flutter/material.dart';
import 'package:myapp/pages/builder_page/navbar.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/pages/builder_page/drawer.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            elevation: 4, // Add elevation for box shadow
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(
                    12), // Add border radius to the bottom corners
              ),
            ),
            actions: [
              PopupMenuButton<String>(
                onSelected: (value) {
                  // Handle the selected value here
                  if (value == 'Share') {
                    // Handle share action
                  } else if (value == 'Help') {
                    // Handle help action
                  } else if (value == 'Feedback') {
                    // Handle feedback action
                  }
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'Share',
                    child: ListTile(
                      leading: Icon(Icons.share),
                      title: Text('Share'),
                    ),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Help',
                    child: ListTile(
                      leading: Icon(Icons.help),
                      title: Text('Help'),
                    ),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Feedback',
                    child: ListTile(
                      leading: Icon(Icons.feedback),
                      title: Text('Feedback'),
                    ),
                  ),
                ],
              ),
            ],
          ),
          drawer: MyDrawer(),
          body: buildPage(_selectedIndex),
          bottomNavigationBar: Container(
            child: BottomNavyBar(
              selectedIndex: _selectedIndex,
              showElevation: true, // use this to remove appBar's elevation
              onItemSelected: (index) => setState(() {
                _selectedIndex = index;
              }),
              items: [
                BottomNavyBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Home'),
                  activeColor: kpurple,
                  inactiveColor: Colors.grey[300],
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.person),
                  title: Text('Students'),
                  inactiveColor: Colors.grey[300],
                  activeColor: kpurple,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.message),
                  title: Text('Contacts'),
                  inactiveColor: Colors.grey[300],
                  activeColor: kpurple,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.build),
                  title: Text('Tools'),
                  inactiveColor: Colors.grey[300],
                  activeColor: kpurple,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
