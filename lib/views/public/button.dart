import 'package:flutter/material.dart';

class SelectButton extends StatelessWidget {
  const SelectButton({Key key, this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        child: Text(text.toUpperCase(), style: TextStyle(fontSize: 14)),
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.fromLTRB(10, 2, 10, 2)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red)))),
        onPressed: () => null);
  }
}
