import 'package:flutter/material.dart';

class text_Task1 extends StatelessWidget {
  String title_Task1;

  text_Task1(this.title_Task1);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 1),
        padding: EdgeInsets.all(15),
        color: Colors.indigo,
        child: Text(
          title_Task1,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
