import 'package:failstack/android/pages/entities/armor.dart';
import 'package:failstack/android/widget/button.widget.dart';
import 'package:failstack/android/widget/drawer.widget.dart';

import 'package:failstack/android/widget/input-container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class ArmorPage extends StatefulWidget {
  @override
  _ArmorPageState createState() => _ArmorPageState();
}

class _ArmorPageState extends State<ArmorPage> {
  final _formKey = GlobalKey<FormState>();
  String _fsSelected = '+ 6';
  var percent = '0%';
  final _keyPercent = GlobalKey<FormState>();
  var arrFails = [
    '+ 6',
    '+ 7',
    '+ 8',
    '+ 9',
    '+ 10',
    '+ 11',
    '+ 12',
    '+ 13',
    '+ 14',
    '+ 15',
    'PRI',
    'DUO',
    'TRI',
    'TET',
    'PEN'
  ];
  var _failStackCtrl = new MaskedTextController(mask: '000');

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
            colors: [Colors.cyan, Colors.purple.withOpacity(0.8)],
          ),
        ),
        child: Form(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Container(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        text:
                            '< Aprimoramento Requerido / Bonus de Failstack >',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        left: 60,
                        right: 20,
                      ),
                      width: 100,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          DropdownButton<String>(
                            value: _fsSelected,
                            icon: Icon(
                              Icons.arrow_downward,
                              color: Colors.black,
                            ),
                            iconSize: 24,
                            elevation: 16,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.w400,
                            ),
                            // underline: Container(
                            //   height: 2,
                            //   color: Colors.black,
                            // ),
                            onChanged: (String newValue) {
                              setState(() {
                                _fsSelected = newValue;
                              });
                            },
                            items: arrFails.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                    InputContainer(
                      fsCtrl: _failStackCtrl,
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Button(
                text: "Calculate",
                formKey: _formKey,
                func: _calculate,
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RichText(
                      key: _keyPercent,
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 110,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        text: percent,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _calculate() {
    var arrSelected = [''];

    if (_fsSelected.toUpperCase() == arrFails[0]) arrSelected = Armor().arrSix;
    if (_fsSelected.toUpperCase() == arrFails[1])
      arrSelected = Armor().arrSeven;
    if (_fsSelected.toUpperCase() == arrFails[2])
      arrSelected = Armor().arrEight;
    if (_fsSelected.toUpperCase() == arrFails[3]) arrSelected = Armor().arrNine;
    if (_fsSelected.toUpperCase() == arrFails[4]) arrSelected = Armor().arrTen;
    if (_fsSelected.toUpperCase() == arrFails[5])
      arrSelected = Armor().arrEleven;
    if (_fsSelected.toUpperCase() == arrFails[6])
      arrSelected = Armor().arrTwelve;
    if (_fsSelected.toUpperCase() == arrFails[7])
      arrSelected = Armor().arrThirteen;
    if (_fsSelected.toUpperCase() == arrFails[8])
      arrSelected = Armor().arrFourteen;
    if (_fsSelected.toUpperCase() == arrFails[9])
      arrSelected = Armor().arrFifteen;
    if (_fsSelected.toUpperCase() == arrFails[10]) arrSelected = Armor().arrPri;
    if (_fsSelected.toUpperCase() == arrFails[11]) arrSelected = Armor().arrDuo;
    if (_fsSelected.toUpperCase() == arrFails[12]) arrSelected = Armor().arrTri;
    if (_fsSelected.toUpperCase() == arrFails[13]) arrSelected = Armor().arrTet;
    if (_fsSelected.toUpperCase() == arrFails[14]) arrSelected = Armor().arrPen;

    setState(() {
      var index =
          _failStackCtrl.text.isNotEmpty ? int.parse(_failStackCtrl.text) : 0;
      if (index == 0) return percent = arrSelected.first;
      if (index > arrSelected.length + 1)
        percent = arrSelected.last;
      else
        percent = arrSelected[index];
    });
  }
}
