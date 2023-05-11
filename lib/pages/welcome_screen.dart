import 'package:flutter/material.dart';
import 'package:myapp/pages/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 1.6,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(children: [
          Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              decoration: BoxDecoration(
                  color: Color(0xFF674AEF),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(70))),
              child: Center(child: Image.asset("images/books.png")),
            ),
          ]),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.666,
              decoration: BoxDecoration(
                color: Color(0xFF674AEF),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.666,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(70))),
              child: Column(children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Learning is not Everything",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                  child: Text(
                    "Do it before you think, because its just a matter of time",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black.withOpacity(0.9),
                      wordSpacing: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Material(
                  color: Color(0xFF674AEF),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                      child: Text(
                        "Let's Start",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
