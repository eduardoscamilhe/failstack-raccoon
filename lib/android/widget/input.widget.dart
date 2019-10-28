import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget {
  var inputType = TextInputType.text;
  var labelText = "Input";
  var ctrl = MaskedTextController(mask: '000');
  Input(
      {@required this.inputType,
      @required this.labelText,
      @required this.ctrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: ctrl,
        keyboardType: inputType,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 20,
              fontFamily: "FreePixel"),
          border: InputBorder.none,
        ),
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      width: 140,
      height: 100,
    );
  }
}
