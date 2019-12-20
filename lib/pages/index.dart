import 'package:flutter/material.dart';
import 'package:google_translate/pages/drawer_page.dart';
import 'package:google_translate/pages/body_page.dart';
import 'package:google_translate/pages/textFiled.dart';
import 'package:google_translate/pages/recording_translate.dart';

class IndexPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IndexPage();
}

class _IndexPage extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'translateLanguage',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
      body: Column(
        children: <Widget>[
          BodyPage(),
          TextPage(),
          RecordingTranslate()
        ],
      ),
      drawer: DrawerPage(),
    ));
  }
}
