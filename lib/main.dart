import 'package:flutter/material.dart';

void main() => runApp(new HelloWorldApp());

class HelloWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title App Bar"),
        ),
        body:  Material(
          color: Colors.blue,
          child: Center(
            child: new Text(
              "Hello World!",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.white, fontSize: 32)
            ),
          ),
        ),
      ),
    );
  }
}