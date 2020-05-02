import 'package:flutter/material.dart';
import './screens/home.dart';

void main() => runApp(new HelloWorldApp());

class HelloWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title App Bar"),
        ),
        body: Home()
      ),
    );
  }
}