import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _PageState createState() => new _PageState();
}

class _PageState extends State<MyApp> {
  Color _color = Color.fromARGB(255, 66, 165, 245);
  final Random _randomColor = Random();

  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        _randomColor.nextInt(256),
        _randomColor.nextInt(256),
        _randomColor.nextInt(256),
        _randomColor.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter App",
          style: new TextStyle(fontFamily: 'Lato',
              fontSize: 22.0
          ),
        ),
      ),
      body: InkWell(
        onTap: changeColor,
        child: Container(
          color: _color,
          child: Center(
            child: Text(
              "Hey There",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 45.0,
                fontFamily: 'Lato',
                fontStyle: FontStyle.normal,
                color: Colors.blue,
                shadows: [
                  Shadow(
                    color: Colors.yellow,
                    offset: Offset(10, 10),
                    blurRadius: 15.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}