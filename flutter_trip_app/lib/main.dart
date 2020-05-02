import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trip Cost Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FuelForm(),
    );
  }
}

class FuelForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FuelFormState();
}

class _FuelFormState extends State<FuelForm> {
  String result = '';
  final _currencies = ['Dollar', 'Euro', 'Rupiah'];
  final double _formDistance = 5.0; 
  String _currency = 'Dollar';
  TextEditingController distanceController = TextEditingController();
  TextEditingController avgController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: _formDistance,
                bottom: _formDistance,
              ),
              child: TextField(
                controller: distanceController,
                decoration: InputDecoration(
                  labelText: 'Distance',
                  hintText: 'e.g. 123',
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ), 
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: _formDistance,
                bottom: _formDistance,
              ),
              child: TextField(
                controller: avgController,
                decoration: InputDecoration(
                  labelText: 'Distance Per Unit',
                  hintText: 'e.g. 18',
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ), 
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Row(children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: _formDistance,
                    bottom: _formDistance,
                  ),
                  child: TextField(
                    controller: priceController,
                    decoration: InputDecoration(
                      labelText: 'Price',
                      hintText: 'e.g. 1.5',
                      labelStyle: textStyle,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ), 
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              Expanded(
                child:  Padding(
                  padding: EdgeInsets.only(
                    top: _formDistance,
                    bottom: _formDistance,
                    left: _formDistance * 4,
                  ),
                  child: DropdownButton<String>(
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
                ),
              ),
            ]),
            Row(children: <Widget>[
              Expanded(
                child: RaisedButton(
                  color: Theme.of(context).primaryColorDark,
                  textColor: Theme.of(context).primaryColorLight,
                  child: Text(
                    'Submit',
                    textScaleFactor: 1.5,
                  ),
                  onPressed: () {
                    setState((){
                      result = _calculate();
                    });
                  }
                ),
              ),
              Expanded(
                child: RaisedButton(
                  color: Theme.of(context).buttonColor,
                  textColor: Theme.of(context).primaryColorDark,
                  child: Text(
                    'Reset',
                    textScaleFactor: 1.5,
                  ),
                  onPressed: () {
                    setState((){
                      _reset();
                    });
                  }
                ),
              ),
            ]),
            Text(result)
          ],
        )
      )
    );
  }

  void _onDropdownChanged(String value) {
    setState((){
      this._currency = value;
    });
  }

  String _calculate() {
    double _distance =  double.parse(distanceController.text);
    double _fuelCost =  double.parse(priceController.text);
    double _consumption =  double.parse(avgController.text);
    double _totalCost = _distance / _consumption * _fuelCost;
    String _result = 'Total cost of the trip is ' + 
      _totalCost.toStringAsFixed(2) + ' ' + _currency;
    return _result;
  }

  void _reset() {
    distanceController.text = '';
    priceController.text = '';
    avgController.text = '';
    setState((){
      result = '';
    });
  }
}
