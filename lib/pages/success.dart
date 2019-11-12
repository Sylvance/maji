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
                      Navigator.pushReplacementNamed(context, 'order'); 
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
                  Text('Message',
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
                  SizedBox(height: 40.0),
                  FutureBuilder<Transaction>(
                    future: transaction,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Padding(child: Text(snapshot.data.note), padding: EdgeInsets.all(10),);
                      } else if (snapshot.hasError) {
                        return Padding(child: Text("${snapshot.error}"), padding: EdgeInsets.all(10),);
                      }

                      // By default, show a loading spinner.
                      return Padding(child: Text("Loading request ..."), padding: EdgeInsets.all(10),);
                    },
                  ),
                  RaisedButton(
                    color: Color(0xFF21BFBD),
                    padding: EdgeInsets.all(10.0),
                    child: Text("My orders", style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'orders');
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
