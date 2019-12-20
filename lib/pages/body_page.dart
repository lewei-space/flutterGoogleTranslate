import 'package:flutter/material.dart';

class BodyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BodyPage();
}

class _BodyPage extends State<BodyPage> {
  final englishText = '英语';
  final chineseText = '中文简体';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            height: 55,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(color: Colors.black12, width: 0.5))),
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(englishText),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  Row(
                    children: <Widget>[Icon(Icons.track_changes)],
                  ),
                  Row(
                    children: <Widget>[
                      Text(chineseText),
                      Icon(Icons.arrow_drop_down)
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
