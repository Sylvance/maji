import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Material(
              child: new Container (
                padding: const EdgeInsets.all(15.0),
                color: Colors.white,
                child: new Container(
                  child: new Center(
                    child: new Column(
                      children : [
                        new Padding(padding: EdgeInsets.only(top: 5.0)),
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Enter Phone number",
                            fillColor: Colors.white,
                            contentPadding: new EdgeInsets.symmetric(vertical: 7.0, horizontal: 12.0),
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
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Enter Password",
                            fillColor: Colors.white,
                            contentPadding: new EdgeInsets.symmetric(vertical: 7.0, horizontal: 12.0),
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(15.0),
                              borderSide: new BorderSide(
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
                          style: new TextStyle(
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
              color: Colors.greenAccent,
              padding: EdgeInsets.all(10.0),
              child: Text("Login"),
              onPressed: () {
                var username = 'Sylvance';
                Navigator.pushReplacementNamed(context, 'home/$username');
              },
            ),
            Text(
              'Not yet registered?'
            ),
            RaisedButton(
              child: Text('Register'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'register');
              },
            ),
          ],
        ),
      ),
    );
  }
}
