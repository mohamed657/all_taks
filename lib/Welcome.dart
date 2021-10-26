import 'package:flutter/material.dart';
import 'package:practies/Contact_Screan/Test_%20Contact_Screan.dart';
import 'package:practies/List_Task1/the_First_practes.dart';
import 'package:practies/Navigat/Nave.dart';
import 'package:practies/Whats_App/Chat_WhatsApp.dart';

import 'Face_Book/Face_Book.dart';
import 'Islami_App/Islami_App.dart';

class Welcome extends StatelessWidget {
  static const String routeName = 'Welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, NavRou.routeName);
              },
              child: Text('press here'),
            ),
          ),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, Task1.routeName),
              child: Text('Task1')),
          ElevatedButton(
              onPressed: () => Navigator.pushReplacementNamed(
                  context, Chat_WhatsApp.routeName),
              child: Text('Chat_WhatsApp')),
          ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, Face_Book.routeName),
              child: Text('FaceBook')),
          ElevatedButton(
            onPressed: () =>
                Navigator.pushNamed(context, test_Contact_Screan.routeName),
            child: Text('Contact_Screan'),
          ),
          ElevatedButton(
            onPressed: () =>
                Navigator.pushNamed(context, Home_Islame.routeName),
            child: Text('Islame App'),
          )
        ]),
      ),
    );
  }
}
