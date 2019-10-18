import 'package:flutter/material.dart';
import 'input.widget.dart';

class InputContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 130,
        // right: 30,
      ),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.all(
          Radius.circular(60),
        ),
      ),
      child: Row(
        children: <Widget>[
          Icon(Icons.add),
          SizedBox(
            width: 10,
          ),
          Input(
            labelText: "FS",
            inputType: TextInputType.number,
          ),
        ],
      ),
    );
  }
}
