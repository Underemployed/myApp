import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String _output = "0";

  Widget buildButton(String buttonText, Color buttonColor, Color textColor) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () => buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
        style: OutlinedButton.styleFrom(
          primary: textColor,
          backgroundColor: buttonColor,
          padding: EdgeInsets.all(24.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
      ),
    );
  }

  void buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "AC") {
        _output = "0";
      } else if (buttonText == "+/-") {
        _output.startsWith("-")
            ? _output = _output.substring(1)
            : _output = "-" + _output;
      } else if (buttonText == "%") {
        _output = (double.parse(_output) / 100).toString();
      } else if (buttonText == ".") {
        if (!_output.contains(".")) {
          _output = _output + ".";
        }
      } else if (buttonText == "=") {
        try {} catch (e) {
          _output = "Error";
        }
      } else {
        _output = _output + buttonText;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator",
      home: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
                child: Text(
                  _output,
                  style: TextStyle(
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  buildButton("AC", Colors.grey, Colors.white),
                  buildButton("+/-", Colors.grey, Colors.white),
                  buildButton("%", Colors.grey, Colors.white),
                  buildButton("/", Colors.orange, Colors.white),
                ],
              ),
              Row(
                children: <Widget>[
                  buildButton("7", Colors.white, Colors.black),
                  buildButton("8", Colors.white, Colors.black),
                  buildButton("9", Colors.white, Colors.black),
                  buildButton("x", Colors.orange, Colors.white),
                ],
              ),
              Row(
                children: <Widget>[
                  buildButton("4", Colors.white, Colors.black),
                  buildButton("5", Colors.white, Colors.black),
                  buildButton("6", Colors.white, Colors.black),
                  buildButton("-", Colors.orange, Colors.white),
                ],
              ),
              Row(
                children: <Widget>[
                  buildButton("1", Colors.white, Colors.black),
                  buildButton("2", Colors.white, Colors.black),
                  buildButton("3", Colors.white, Colors.black),
                  buildButton("+", Colors.orange, Colors.white),
                ],
              ),
              Row(
                children: <Widget>[
                  buildButton("0", Colors.white, Colors.black),
                  buildButton(".", Colors.white, Colors.black),
                  buildButton("=", Colors.orange, Colors.white),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
