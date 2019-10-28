import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'input.widget.dart';

class InputContainer extends StatelessWidget {
  var fsCtrl = new MaskedTextController(mask: '000');
  InputContainer({
    @required this.fsCtrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 5,
        // right: 30,
      ),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.all(
          Radius.circular(60),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.add),
          SizedBox(
            width: 10,
          ),
          Input(
            ctrl: fsCtrl,
            labelText: "FailStacks",
            inputType: TextInputType.number,
          ),
        ],
      ),
    );
  }
}
