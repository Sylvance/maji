import 'package:flutter/material.dart';
import 'package:letamaji/router.dart';

void main() {
  FluroRouter.setupRouter();
  runApp(LetaMaji());
}

class LetaMaji extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maji',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'splash',
      onGenerateRoute: FluroRouter.router.generator
    );
  }
}
