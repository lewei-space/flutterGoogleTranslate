import 'package:flutter/material.dart';

class TextDemo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _textDemoPage();
}

class _textDemoPage extends State<TextDemo> {

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150.0,
        padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 0),
        decoration: BoxDecoration(
            color: Colors.white,
            border:
            Border(bottom: BorderSide(color: Colors.black12, width: 0.5))),
        child: TextField(
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20.0,
          ),
          maxLines: 999,
          cursorColor: Colors.red,
          cursorWidth: 2.0,
          decoration:
          InputDecoration(border: InputBorder.none, hintText: '点按即可输入文字'),
        ));
  }
}
