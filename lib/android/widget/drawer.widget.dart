import 'package:failstack/android/pages/items/accessory.page.dart';
import 'package:failstack/android/pages/items/armor.page.dart';
import 'package:failstack/android/pages/items/weapon.page.dart';
import 'package:flutter/material.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class DrawerWidget extends StatefulWidget {
  // final drawerItems = [
  //   new DrawerItem('Armor', Icons.build),
  //   new DrawerItem('Weapon', Icons.build),
  //   new DrawerItem('Accessory', Icons.build),
  // ];

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  // int _selectedDrawerIndex = 0;

  // _getDrawerItemWidget(int pos) {
  //   switch (pos) {
  //     case 0:
  //       return new ArmorPage();
  //     case 1:
  //       return new WeaponPage();
  //     case 2:
  //       return new AccessoryPage();

  //     default:
  //       return new Text("Error");
  //   }
  // }

  // _onSelectItem(int index) {
  //   setState(() => _selectedDrawerIndex = index);

  //   Navigator.of(context).pop(); // close the drawer
  //   Navigator.of(context).push(
  //     MaterialPageRoute(
  //       builder: (BuildContext context) => _getDrawerItemWidget(index),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    // var drawerOptions = <Widget>[];
    // for (var i = 0; i < widget.drawerItems.length; i++) {
    //   var d = widget.drawerItems[i];
    //   drawerOptions.add(new ListTile(
    //     leading: new Icon(d.icon),
    //     title: new Text(d.title),
    //     selected: i == _selectedDrawerIndex,
    //     onTap: () => _onSelectItem(i),
    //   ));
    // }
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("Guaxinim"),
            accountEmail: new Text('Raccoon#5731'),
            currentAccountPicture: CircleAvatar(
              // backgroundColor: Color(0xFF111111),
              backgroundImage: AssetImage('assets/images/dev.jpg'),
            ),
          ),
          new Divider(),
          new ListTile(
              title: new Text("Armor"),
              trailing: new Icon(Icons.add_circle_outline),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/Armor');
              }),
          new ListTile(
              title: new Text("Weapon"),
              trailing: new Icon(Icons.add_circle_outline),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/Weapon');
              }),
          new ListTile(
              title: new Text("Accessory"),
              trailing: new Icon(Icons.add_circle_outline),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/Accessory');
              }),
          new ListTile(
              title: new Text("Skill Clothes"),
              trailing: new Icon(Icons.add_circle_outline),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/Life');
              }),
          // new ListTile(
          //     title: new Text("About"),
          //     trailing: new Icon(Icons.info),
          //     onTap: () {
          //       Navigator.of(context).pop();
          //       Navigator.of(context).pushNamed('/About');
          //     }),
        ],
      ),
    );
  }
}
