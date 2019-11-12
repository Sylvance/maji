import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OrderInfo();
}

class _OrderInfo extends State<OrderPage> {
  List<String> _locations = ['Kasarani', 'Roysambu', 'Eastleigh', 'Rongai', 'Machakos'];
  String _selectedLocation;

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
                      var username = 'Sylvance';
                      Navigator.pushReplacementNamed(context, 'home/$username'); 
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
                  Text('Order water',
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
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(45.0)),
              ),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.format_list_numbered_rtl),
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: "Amount of water",
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.person_pin_circle),
                    title: DropdownButton(
                      hint: Text('Your location'),
                      value: _selectedLocation,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedLocation = newValue;
                        });
                      },
                      items: _locations.map((location) {
                        return DropdownMenuItem(
                          child: Text(location),
                          value: location,
                        );
                      }).toList(),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.phone_in_talk),
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: "Phone number",
                      ),
                    ),
                  ),
                  RaisedButton(
                    color: Color(0xFF21BFBD),
                    padding: EdgeInsets.all(10.0),
                    child: Text("Place request", style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'accept');
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
