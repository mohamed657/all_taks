import 'package:flutter/material.dart';

class Xo_Game_Button extends StatelessWidget {
  Function onPressedButton;

  int index;
  String text = '';

  Xo_Game_Button(this.text, this.onPressedButton, this.index);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(2),
        padding: EdgeInsets.all(2),
        child: ElevatedButton(
          onPressed: () => onPressedButton(index),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
