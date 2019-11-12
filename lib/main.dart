import 'package:flutter/material.dart';
import 'package:letamaji/router.dart';

void main() {
  FluroRouter.setupRouter();
  runApp(LetaMaji());
}

class LetaMaji extends StatelessWidget {
  static const PrimaryColor =  Color(0xFF21BFBD);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maji',
      debugShowCheckedModeBanner: false,
      color: PrimaryColor,
      initialRoute: 'splash',
      onGenerateRoute: FluroRouter.router.generator
    );
  }
}
