import 'package:flutter/material.dart';

class EstatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EstateInfo();
}

class _EstateInfo extends State<EstatePage> {
  List<String> _locations = ['Kasarani', 'Roysambu', 'Eastleigh', 'Rongai', 'Machakos'];
  String _selectedLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Estate info'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Padding(padding: EdgeInsets.only(top: 20.0)),
              Container(child: Text('Enter location you want water delivered')),
              DropdownButton(
                hint: Text('Please choose a location'),
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
              new Material(
                child: new Container (
                  padding: const EdgeInsets.all(15.0),
                  color: Colors.white,
                  child: new Container(
                    child: new Center(
                      child: new Column(
                        children : [
                          new Padding(padding: EdgeInsets.only(top: 25.0)),
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Amount of water",
                              fillColor: Colors.white,
                              contentPadding: new EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(15.0),
                                borderSide: new BorderSide(
                                ),
                              ),
                            ),
                            validator: (val) {
                              if(val.length==0) {
                                return "Number of Jerricans cannot be empty";
                              }else{
                                return null;
                              }
                            },
                            keyboardType: TextInputType.text,
                            style: new TextStyle(
                              fontFamily: "Poppins",
                            ),
                          ),
                          new Padding(padding: EdgeInsets.only(top: 5.0)),
                        ]
                      )
                    ),
                  ),
                ),
              ),
              new Material(
                child: new Container (
                  padding: const EdgeInsets.all(15.0),
                  color: Colors.white,
                  child: new Container(
                    child: new Center(
                      child: new Column(
                        children : [
                          Text('Enter your phone number. We will use this to charge your Mpesa.'),
                          new Padding(padding: EdgeInsets.only(top: 25.0)),
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Enter number",
                              fillColor: Colors.white,
                              contentPadding: new EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(15.0),
                                borderSide: new BorderSide(
                                ),
                              ),
                            ),
                            validator: (val) {
                              if(val.length==0) {
                                return "Phone number cannot be empty";
                              }else{
                                return null;
                              }
                            },
                            keyboardType: TextInputType.phone,
                            style: new TextStyle(
                              fontFamily: "Poppins",
                            ),
                          ),
                          new Padding(padding: EdgeInsets.only(top: 5.0)),
                        ]
                      )
                    ),
                  ),
                ),
              ),
              RaisedButton(
                color: Colors.indigoAccent,
                padding: EdgeInsets.all(10.0),
                child: Text("Login"),
                onPressed: () {
                  var username = 'Sylvance';
                  Navigator.pushReplacementNamed(context, 'accept');
                },
              ),
            ],
          ),
        ),
      );
  }
}
