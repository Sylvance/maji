import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String username;
  HomePage(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 15.0, left: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.home),
                    color: Colors.white,
                    onPressed: () {
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
                          ),
                          IconButton(
                            icon: Icon(Icons.power_settings_new),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, 'login');
                            },
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
                  Text('Order water',
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
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0)),
              ),
              child: Column(
                children: <Widget>[
                  // Text('$username! You have no pending request'),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, 'order');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: [
                                Hero(
                                  tag: 'assets/bottle1.png',
                                  child: Image(
                                    image: AssetImage('assets/bottle1.png'),
                                    // fit: BoxFit.cover,
                                    height: 45.0,
                                    width: 45.0
                                  )
                                ),
                                SizedBox(width: 5.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[
                                    Text(
                                      'Order water',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold
                                      )
                                    ),
                                    Text(
                                      'Quick delivery',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 12.0,
                                        color: Colors.grey
                                      )
                                    )
                                  ]
                                )
                              ]
                            )
                          ),
                          IconButton(
                            icon: Icon(Icons.chevron_right),
                            color: Colors.black,
                            onPressed: () {}
                          )
                        ],
                      )
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, 'order');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: [
                                Hero(
                                  tag: 'assets/bottle2.png',
                                  child: Image(
                                    image: AssetImage('assets/bottle2.png'),
                                    // fit: BoxFit.cover,
                                    height: 45.0,
                                    width: 45.0
                                  )
                                ),
                                SizedBox(width: 5.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[
                                    Text(
                                      'Order water',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold
                                      )
                                    ),
                                    Text(
                                      'Schedule delivery',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 12.0,
                                        color: Colors.grey
                                      )
                                    )
                                  ]
                                )
                              ]
                            )
                          ),
                          IconButton(
                            icon: Icon(Icons.chevron_right),
                            color: Colors.black,
                            onPressed: () {}
                          )
                        ],
                      )
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, 'orders');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: [
                                Hero(
                                  tag: 'assets/bottle3.png',
                                  child: Image(
                                    image: AssetImage('assets/bottle2.png'),
                                    // fit: BoxFit.cover,
                                    height: 45.0,
                                    width: 45.0
                                  )
                                ),
                                SizedBox(width: 5.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[
                                    Text(
                                      'View past Orders',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold
                                      )
                                    ),
                                  ]
                                )
                              ]
                            )
                          ),
                          IconButton(
                            icon: Icon(Icons.chevron_right),
                            color: Colors.black,
                            onPressed: () {}
                          )
                        ],
                      )
                    )
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
