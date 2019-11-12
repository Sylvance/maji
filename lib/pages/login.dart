import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
                  FlatButton.icon(
                    icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
                    label: Text('Register', style: TextStyle(color: Colors.white),),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'register'); 
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Row(
                children: <Widget>[
                  Text('Login',
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
                borderRadius: BorderRadius.only(topLeft: Radius.circular(55.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Material(
                    child: Container (
                      padding: const EdgeInsets.all(15.0),
                      color: Colors.white,
                      child: Container(
                        child: Center(
                          child: Column(
                            children : [
                              Padding(padding: EdgeInsets.only(top: 5.0)),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: "Enter Phone number",
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 12.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide(
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
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 5.0)),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: "Enter Password",
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 12.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide(
                                    ),
                                  ),
                                ),
                                validator: (val) {
                                  if(val.length==0) {
                                    return "Password cannot be empty";
                                  }else{
                                    return null;
                                  }
                                },
                                keyboardType: TextInputType.visiblePassword,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ]
                          )
                        ),
                      ),
                    ),
                  ),
                  RaisedButton(
                    color: Color(0xFF21BFBD),
                    padding: EdgeInsets.all(10.0),
                    child: Text("Login", style: TextStyle(color: Colors.white),),
                    onPressed: () {
                      var username = 'Sylvance';
                      Navigator.pushReplacementNamed(context, 'home/$username');
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
