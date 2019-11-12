import 'package:flutter/material.dart';

class AcceptPage extends StatelessWidget {
  final amountOfWater = 5;
  final phoneNumber = 790781834;
  final location = 'Kasarani';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 15.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'order'); 
                    },
                  ),
                  Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.menu),
                            color: Colors.white,
                            onPressed: () {},
                          )
                        ],
                      ))
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Row(
                children: <Widget>[
                  Text('Confirm Order',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0)),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: MediaQuery.of(context).size.height - 125,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(45.0)),
              ),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title:  Text("Amount of water: $amountOfWater jerricans"),
                    dense: true,
                  ),
                  ListTile(
                    title:  Text("Phone number: $phoneNumber"),
                    dense: true,
                  ),
                  ListTile(
                    title:  Text("Location: $location"),
                    dense: true,
                  ),
                  RaisedButton(
                    color: Color(0xFF21BFBD),
                    padding: EdgeInsets.all(10.0),
                    child: Text("Confirm info", style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'success');
                    },
                  ),
                  ListTile(
                    title: Text(
                      "* The amount of water above is the number of 20 litre jerricans you need. After placing your order, an MPESA request will pop up on your screen for phone number above.",
                      style: TextStyle(fontSize: 8.0),
                    ),
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
