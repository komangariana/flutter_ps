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
  final _currencies = ['Dollar', 'Euro', 'Rupiah'];
  String _currency = 'Dollar';
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
                  if (string == '') {
                    welcomeText = '';
                  } else {
                    welcomeText = 'Hello ' + string + ', how are you ?';
                  }
                });
              }
            ),
            DropdownButton<String>(
              items: _currencies.map((String value){
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value)
                );
              }).toList(),
              value: _currency,
              onChanged: (String value) {
                _onDropdownChanged(value);
              },
            ),
            Text(welcomeText)
          ],
        )
      )
    );
  }
  _onDropdownChanged(String value) {
    setState((){
      this._currency = value;
    });
  }
}
