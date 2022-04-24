import 'package:blockparty_compass/views/start.dart';
import 'package:flutter/material.dart';

void main() {
  //main-method
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: StartRoute(),
    );
  }
}
