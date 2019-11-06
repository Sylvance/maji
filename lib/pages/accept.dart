import 'package:flutter/material.dart';

class AcceptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accept info'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Do you accept that all info provided is correct?'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Next'),
        onPressed: () {
          Navigator.pushReplacementNamed(context, 'success');
        },
      ),
    );
  }
}
