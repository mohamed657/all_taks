import 'package:flutter/material.dart';
import 'package:practies/Face_Book/HomeScrean_FaceBook.dart';
import 'package:practies/Face_Book/text_Filled.dart';

class Face_Book extends StatelessWidget {
  static const String routeName = 'Face_Book';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.indigoAccent),
              child: Icon(
                Icons.facebook,
                color: Colors.white,
                size: 80,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            text_Filled_faceBook('Email or Phone'),
            text_Filled_faceBook('Password'),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 45,
              child: ElevatedButton(
                onPressed: () => Navigator.pushReplacementNamed(
                    context, HomeScrean_FaceBook.routeName),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white38),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey)),
              ),
            ),
            Spacer(),
            Text(
              'Sign Up for FeedBack',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Forget Password',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
