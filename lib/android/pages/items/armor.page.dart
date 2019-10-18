import 'package:failstack/android/pages/drawer.widget.dart';
import 'package:failstack/android/widget/button.widget.dart';
import 'package:failstack/android/widget/input-container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArmorPage extends StatefulWidget {
  @override
  _ArmorPageState createState() => _ArmorPageState();
}

class _ArmorPageState extends State<ArmorPage> {
  final _formKey = GlobalKey<FormState>();

  int selectedRadio;
  @override
  void initState() {
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  var _failstack = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Armor"),
      ),
      drawer: DrawerWidget(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0, 1],
            colors: [Colors.red, Colors.black],
          ),
        ),
        child: Form(
          child: ListView(
            children: <Widget>[
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  ListTile(
                    title: const Text('+6'),
                    leading: Radio(
                      value: 6,
                      groupValue: selectedRadio,
                      activeColor: Colors.green,
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('+7'),
                    leading: Radio(
                      value: 7,
                      groupValue: selectedRadio,
                      activeColor: Colors.green,
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                height: 70,
                child: Row(
                  children: <Widget>[
                    InputContainer(),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Button(
                text: "Calculate",
                formKey: _formKey,
                func: _calculate,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Function _calculate() {}

// String _switchMoreThanFifteen(int i) {
//   switch (i) {
//     case 16:
//       return 'PRI';
//     case 17:
//       return 'DUO';
//     case 18:
//       return 'TRI';
//     case 19:
//       return 'TET';
//     case 20:
//       return 'PEN';
//     default:
//       return '+$i';
//   }
// }
//     // var radioButtons = <Widget>[];
//     // for (int i = 6; i < 14; i++) {
//     //   radioButtons.add(ListTile(
//     //     title: Text(_switchMoreThanFifteen(i)),
//     //     leading: Radio(
//     //       value: i,
//     //       groupValue: selectedRadio,
//     //       activeColor: Colors.green,
//     //       onChanged: (val) {
//     //         setSelectedRadio(val);
//     //       },
//     //     ),
//     //   ));
//     // }
