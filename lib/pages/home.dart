import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String username;
  HomePage(this.username);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome home, $username!'), 
            Text('You have no pending request'),
            RaisedButton(
              color: Colors.greenAccent,
              child: Text('Make a new request'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'estate');
              },
            ),
            RaisedButton(
              color: Colors.lightBlueAccent,
              child: Text('View past requests  '),
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'orders');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: RaisedButton(
        child: Text('Logout'),
        onPressed: () {
          Navigator.pushReplacementNamed(context, 'login');
        },
      ),
    );
  }
}
