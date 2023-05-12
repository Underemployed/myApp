import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Text(
                'Barton Hill Lib',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              onTap: () {
                // Handle home tap
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                "Student's corner",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              onTap: () {
                // Handle student's corner tap
              },
            ),
            ListTile(
              leading: Icon(
                Icons.contacts,
                color: Colors.white,
              ),
              title: Text(
                'Contacts',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              onTap: () {
                // Handle contacts tap
              },
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Text(
                'Support Us',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'The Developers',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              onTap: () {
                // Handle developers tap
              },
            ),
            ListTile(
              title: Text(
                'More Apps',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              onTap: () {
                // Handle more apps tap
              },
            ),
            ListTile(
              title: Text(
                'Privacy Policy',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              onTap: () {
                // Handle privacy policy tap
              },
            ),
          ],
        ),
      ),
    );
  }
}
