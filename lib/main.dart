import 'package:flutter/material.dart';
import 'animation/animation.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'translate',
      theme: ThemeData(
        primaryColor: Colors.blue[600],
        primarySwatch: Colors.blue,
      ),
      home: OpenAnimation(),
    );
  }
}
