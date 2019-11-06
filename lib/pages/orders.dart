import 'package:flutter/material.dart';

import 'package:letamaji/api.dart';
import 'package:letamaji/models/transaction.dart';
class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}
class _OrdersPageState extends State<OrdersPage> {
  final icons = [Icons.directions_run];
  
  Future<List<Transaction>> transactions;

  @override
  void initState() {
    super.initState();
    transactions = fetchTransactions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Past requests"),),
      body: Column(
        children: <Widget>[
          Expanded(
            child: FutureBuilder<List<Transaction>>(
              future: transactions,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          leading: Icon(icons[0]),
                          title: Text(snapshot.data[index].note),
                        ),
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }

                // By default, show a loading spinner.
                return  Center(child: CircularProgressIndicator());
              },
            ),
          )
        ],
      ),
      floatingActionButton: RaisedButton(
        color: Colors.blueAccent,
        child: Text('Back Home'),
        onPressed: () {
          var username = 'Sylvance';
          Navigator.pushReplacementNamed(context, 'home/$username');
        },
      ),
    );
  }
}
