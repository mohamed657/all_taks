import 'package:flutter/material.dart';

class text_Filled_faceBook extends StatelessWidget {
  String title_TextFailled;

  text_Filled_faceBook(this.title_TextFailled);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 75,
      child: TextField(
        decoration: InputDecoration(
          label: Text(
            title_TextFailled,
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
