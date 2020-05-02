import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center (
      child: Container(
        alignment: Alignment.center,
        color: Colors.deepOrangeAccent,
        padding: EdgeInsets.only(top: 30.0, left: 20.0),
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              Expanded(
                child: Text('Margherita', 
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 30.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.normal
                  ),
                ),
              ),
              Expanded(
                child: Text('Tomato, Mozzarela, Basil', 
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic
                  ),
                ),
              )
            ]),
            Row(children: <Widget>[
              Expanded(
                child: Text('Marinara', 
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 30.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.normal
                  ),
                ),
              ),
              Expanded(
                child: Text('Tomato, Garlic', 
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic
                  ),
                ),
              )
            ]),
            PizzaLogo(),
            OrderButton(),
          ]
        )
        
      )
    );
  }
}

class PizzaLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/pizza.png');
    Image image = Image(image: pizzaAsset, width: 200.0, height: 200.0);
    return Container(child: image);
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text("Order Your Pizza"),
        color:  Colors.lightGreen,
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    );
    return button;
  }
  void order(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thank you for your order")
    );
    showDialog(
      context: context,
      builder:  (BuildContext context) => alert
    );
  }
}