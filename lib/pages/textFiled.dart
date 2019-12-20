import 'package:flutter/material.dart';
import 'package:google_translate/pages/textDemo.dart';
import 'package:google_translate/pages/icon_demo.dart';

class TextPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _textPage();
}

class _textPage extends State<TextPage> {

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(0.0),
      child: Container(
          height: 250.0,
          child: Column(
//            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextDemo(),
              IconDemo(),
            ],
          )),
    );
  }
}
