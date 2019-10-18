import 'package:failstack/android/widget/button.widget.dart';
import 'package:failstack/android/widget/input-container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../drawer.widget.dart';

class AccessoryPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Accessory"),
      ),
      drawer: DrawerWidget(),
      body: new Center(
        child: new Text("In Development", style: new TextStyle(fontSize: 35.0)),
      ),
      // body: Container(
      //   decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //       begin: Alignment.topCenter,
      //       end: Alignment.bottomCenter,
      //       stops: [0, 1],
      //       colors: [Colors.red, Colors.black],
      //     ),
      //   ),
      //   child: Form(
      //     child: ListView(
      //       children: <Widget>[
      //         SizedBox(
      //           height: 100,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(
      //             left: 20,
      //             right: 20,
      //           ),
      //           height: 70,
      //           child: Row(
      //             children: <Widget>[
      //               InputContainer(),
      //               SizedBox(
      //                 height: 30,
      //               )
      //             ],
      //           ),
      //         ),
      //         SizedBox(
      //           height: 30,
      //         ),
      //         Button(
      //           text: "Calculate",
      //           formKey: _formKey,
      //           category: 'Weapon',
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
