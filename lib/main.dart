import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
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
    ),
  );
}