import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  var text = "Text";
  var formKey = GlobalKey<FormState>();

  Function func;

  Button({
    @required this.text,
    @required this.formKey,
    @required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 50, right: 50),
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xFF111111),
        borderRadius: BorderRadius.all(
          Radius.circular(60),
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.red.withOpacity(0.8),
        //     blurRadius: 0.8,
        //     offset: Offset(-2.0, 5.0),
        //   )
        // ],
      ),
      width: 200,
      child: FlatButton(
        child: Text(
          text,
          style: TextStyle(color: Colors.cyan, fontSize: 20),
        ),
        onPressed: func,
        // () {
        //   if (formKey.currentState.validate()) {
        //     formKey.currentState.save();
        //   }
      ),
    );
  }
}
