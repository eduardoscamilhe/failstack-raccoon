import 'package:failstack/android/widget/drawer.widget.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      drawer: DrawerWidget(),
      body: new Center(
        child: new Text("In Development", style: new TextStyle(fontSize: 35.0)),
      ),
      // Container(
      //   decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //       begin: Alignment.topCenter,
      //       end: Alignment.bottomCenter,
      //       stops: [0, 1],
      //       colors: [Colors.cyan, Colors.white],
      //     ),
      //   ),
      //   child: ListView(
      //     children: <Widget>[
      //       RichText(
      //         text: TextSpan(
      //           style: Theme.of(context).textTheme.display1,
      //           // text:
      //           //     'Aplicativo desenvolvido para o cálculo de failstack do jogo Black Desert Online',
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
