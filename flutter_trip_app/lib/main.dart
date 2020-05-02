import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello You Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HelloYou(),
    );
  }
}

class HelloYou extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HelloYouState();
}

class _HelloYouState extends State<HelloYou> {
  String welcomeText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'Please insert your name here',
              ),
              onChanged: (String string) {
                setState((){
                  welcomeText = 'Hello ' + string + ', how are you ?';
                });
              }
            ),
            Text(welcomeText)
          ],
        )
      )
    );
  }
}
