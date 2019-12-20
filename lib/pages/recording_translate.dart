import 'package:flutter/material.dart';
import 'const_func.dart';
import 'dart:async';
import 'dart:convert';

class RecordingTranslate extends StatefulWidget {
  @override
  _RecordingTranslateState createState() => _RecordingTranslateState();
}

class _RecordingTranslateState extends State<RecordingTranslate> {
  var _items = [];
  final wordsList = [
    {'title': 'title1', 'subTitle': 'subtitle1', 'isCol': false},
    {'title': 'title1', 'subTitle': 'subtitle1', 'isCol': false},
    {'title': 'title1', 'subTitle': 'subtitle1', 'isCol': false}
  ];

  @override
  void initState() {
    super.initState();
    getMovies();
  }

  getMovies() {
    print('object');
    setState(() {
      print(wordsList);
      print('-----00000----');
      _items = wordsList.map((json) => Translate.fromJson(json)).toList();
      print(_items);
    });
  }

//  List<Translate>

//  List<Translate> _items = [
//    Translate('title1', 'subtitle1', false),
//    Translate('title2', 'subtitle1', false),
//    Translate('title3', 'subtitle1', true),
//    Translate('title4', 'subtitle1', true),
//    Translate('title5', 'subtitle1', false),
//  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: _items.length,
//            itemExtent: 50.0, //强制高度为50.0
            itemBuilder: (BuildContext context, int index) {
              return _displayList(index);
            }));
  }

  Widget _displayList(int index) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(color: Colors.black12, width: 0.5),
          )),
      margin: EdgeInsets.all(4.0),
//      child: Text('data'),
//      height: 60.0,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            _flexChild(index),
            _iconChild(index),
          ],
        ),
      ),
    );
  }

  Widget _flexChild(int index) {
    return Flexible(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          _items[index].title,
          style: Theme.of(context).textTheme.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text(_items[index].subTitle,
            style: Theme.of(context).textTheme.subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis)
      ],
    ));
  }

  Widget _iconChild(int index) {
    return IconButton(
      icon: Icon(_items[index].isCol ? Icons.star : Icons.star_border),
      onPressed: () {
        print(_items[index]);
      },
    );
  }
}
