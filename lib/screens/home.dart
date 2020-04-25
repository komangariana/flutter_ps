import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: Center(
        child: new Text(
          sayHello(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 32)
        ),
      ),
    );
  }
  String sayHello() {
    String hello;
    DateTime now = new DateTime.now();
    int hour = now.hour;
    int minute = now.minute;

    if (hour < 12) {
      hello = "Good Morning Good People";
    } else if (hour < 18) {
      hello = "Good Afternoon Good People";
    } else {
      hello = "Good Evening Good People";
    }

    String minutes = (minute < 10) ? "0" + minute.toString() : minute.toString();

    return "Now is " + hour.toString() + ":" + minutes + " o'clock" + "\n" + hello;
  }
}