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
              color: Colors.indigo,
              child: Text('Make a new request', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'order');
              },
            ),
            RaisedButton(
              color: Colors.blueAccent,
              child: Text('View past requests  ', style: TextStyle(color: Colors.white)),
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
