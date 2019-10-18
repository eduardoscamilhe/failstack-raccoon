import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  var inputType = TextInputType.text;
  var labelText = "Input";

  Input({
    @required this.inputType,
    @required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
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
          color: Colors.white,
        ),
      ),
      width: 70,
      height: 100,
    );
  }
}
