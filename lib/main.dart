import 'android/pages/home.page.dart';
import 'android/pages/items/armor.page.dart';
import 'package:flutter/material.dart';

import 'android/pages/items/accessory.page.dart';
import 'android/pages/items/life.page.dart';
import 'android/pages/items/weapon.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final rout = <String, WidgetBuilder>{
    '/Armor': (context) => ArmorPage(),
    '/Weapon': (context) => WeaponPage(),
    '/Accessory': (context) => AccessoryPage(),
    '/Life': (context) => LifePage(),
    '/About': (context) => AboutPage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FailStack Raccoon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: new ArmorPage(),
      routes: rout,
    );
  }
}
