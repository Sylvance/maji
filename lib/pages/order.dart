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
      appBar: AppBar(
        title: new Text('Request water'),
        actions: <Widget>[
          new IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () { 
              var username = 'Sylvance';
              Navigator.pushReplacementNamed(context, 'home/$username'); 
            })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new ListTile(
              leading: const Icon(Icons.format_list_numbered_rtl),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Amount of water",
                ),
              ),
            ),
            new ListTile(
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
                    child: new Text(location),
                    value: location,
                  );
                }).toList(),
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.phone_in_talk),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Phone number",
                ),
              ),
            ),
            RaisedButton(
              color: Colors.indigoAccent,
              padding: EdgeInsets.all(10.0),
              child: Text("Place request", style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'accept');
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
