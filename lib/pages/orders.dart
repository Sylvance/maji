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
                  Text('Past orders',
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
                borderRadius: BorderRadius.only(topLeft: Radius.circular(45.0)),
              ),
              child: Column(
                children: <Widget>[
                  FutureBuilder<List<Transaction>>(
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
                        return Padding(child: Text("${snapshot.error}"), padding: EdgeInsets.all(15),);
                      }

                      // By default, show a loading spinner.
                      return  Padding(child: Center(child: Text('Loading recent orders ...')), padding: EdgeInsets.all(15),);
                    },
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
