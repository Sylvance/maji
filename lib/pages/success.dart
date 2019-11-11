import 'package:flutter/material.dart';

import 'package:letamaji/api.dart';
import 'package:letamaji/models/transaction.dart';

class SuccessPage extends StatefulWidget {
  @override
  _SuccessPageState createState() => _SuccessPageState();
}
class _SuccessPageState extends State<SuccessPage> {
  Future<Transaction> transaction;

  @override
  void initState() {
    super.initState();
    transaction = fetchTransaction(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Success'),
        actions: <Widget>[
          new IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () { 
              Navigator.pushReplacementNamed(context, 'order'); 
            })
        ],
      ),
      body: Center(
        child: FutureBuilder<Transaction>(
          future: transaction,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data.note);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner.
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
