import 'package:flutter/material.dart';

class IconDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _iconDemo();
}

class _iconDemo extends State<IconDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ActionButton(
            title: '001',
            icon: Icons.camera_alt,
            image: AssetImage(''),
          ),
          ActionButton(
            title: '002',
            icon: Icons.camera_alt,
            image: AssetImage(''),
          ),
          ActionButton(
            title: '003',
            icon: Icons.camera_alt,
            image: AssetImage(''),
          ),
          ActionButton(
            title: '004',
            icon: Icons.camera_alt,
            image: AssetImage(''),
          ),
        ],
      ),
    );
  }
}

class ActionButton extends StatefulWidget {
  final String title;
  final IconData icon;
  final AssetImage image;

  ActionButton({Key key, @required this.title, this.icon, this.image})
      : super(key: key);

  @override
  _ActionButtonState createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _displayIcon(),
          Text(
            widget.title,
            style: TextStyle(fontSize: 18.0, color: Colors.green, height: 2.0),
          ),
        ],
      ),
    );
  }

  Widget _displayIcon(){
    if(widget.icon!=null){
      return Icon(
        widget.icon,
        color: Colors.red,
        size: 25.0,
      );
    }else if(widget.image!=null){
      return ImageIcon(
          widget.image,
        color: Colors.red,
        size: 25.0,
      );
    }else{
      return Container();
    }
  }

}
