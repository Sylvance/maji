import 'package:flutter/material.dart';

class AcceptPage extends StatelessWidget {
  final amountOfWater = 5;
  final phoneNumber = 790781834;
  final location = 'Kasarani';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Request water'),
        actions: <Widget>[
          new IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () { 
              Navigator.pushReplacementNamed(context, 'order'); 
            })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new ListTile(
              title: new  Text("Amount of water: $amountOfWater jerricans"),
              dense: true,
            ),
            new ListTile(
              title: new  Text("Phone number: $phoneNumber"),
              dense: true,
            ),
            new ListTile(
              title: new  Text("Location: $location"),
              dense: true,
            ),
            RaisedButton(
              color: Colors.indigoAccent,
              padding: EdgeInsets.all(10.0),
              child: Text("Confirm info", style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'success');
              },
            ),
            new ListTile(
              title: new Text(
                "* The amount of water above is the number of 20 litre jerricans you need. After placing your order, an MPESA request will pop up on your screen for phone number above.",
                style: TextStyle(fontSize: 8.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
