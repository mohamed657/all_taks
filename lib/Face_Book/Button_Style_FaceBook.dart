import 'package:flutter/material.dart';

class Button_Style_FaceBook extends StatelessWidget {
  String Path_FaceBook;
  String text_Button_FaceBook;

  Button_Style_FaceBook(this.Path_FaceBook, this.text_Button_FaceBook);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white)),
        child: Row(
          children: [
            Image.asset(
              Path_FaceBook,
              width: 20,
              height: 20,
            ),
            Text(
              text_Button_FaceBook,
              style: TextStyle(color: Colors.black),
            )
          ],
        ));
  }
}
