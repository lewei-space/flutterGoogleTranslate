import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => drawer_page();
}

class drawer_page extends State<DrawerPage> {
  final drawerImg = 'images/drawerBackImg.jpg';
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _clickIcon() {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('lele'),
            accountEmail: Text('1063@qq.com'),
            currentAccountPicture: null,
            decoration: BoxDecoration(
                color: Colors.amberAccent,
                image: DecorationImage(
                    fit: BoxFit.fitWidth, image: AssetImage(drawerImg))),
          ),
          ListTile(
            selected: true,
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('首页'),
            subtitle: Text('home'),
            leading: Icon(CupertinoIcons.home),
            onTap: _clickIcon,
          ),
          ListTile(
            selected: false,
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('翻译收藏夹'),
            subtitle: Text('home'),
            leading: Icon(CupertinoIcons.location_solid),
            onTap: _clickIcon,
          ),
          ListTile(
            selected: false,
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('离线翻译'),
            subtitle: Text('home'),
            leading: Icon(CupertinoIcons.music_note),
            onTap: _clickIcon,
          ),
          ListTile(
            selected: false,
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('设置'),
            subtitle: Text('home'),
            leading: Icon(CupertinoIcons.settings_solid),
            onTap: _clickIcon,
          )
        ],
      ),
    );
  }
}
