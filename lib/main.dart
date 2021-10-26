import 'package:flutter/material.dart';
import 'package:practies/Contact_Screan/Test_%20Contact_Screan.dart';
import 'package:practies/Face_Book/HomeScrean_FaceBook.dart';
import 'package:practies/List_Task1/List_View.dart';
import 'package:practies/List_Task1/the_First_practes.dart';
import 'package:practies/Navigat/Nave.dart';
import 'package:practies/Welcome.dart';
import 'package:practies/Whats_App/Chat_WhatsApp.dart';
import 'package:practies/Xo_Game/Xo_Game.dart';
import 'package:practies/Xo_Game/Xo_Game_Bord.dart';
import 'package:practies/countButton.dart';

import 'Face_Book/Face_Book.dart';
import 'Islami_App/Islami_App.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        NavRou.routeName: (context) => NavRou(),
        Welcome.routeName: (context) => Welcome(),
        CountButton.routeName: (context) => CountButton(),
        Xo_Game.routeName: (context) => Xo_Game(),
        Xo_Game_Bord.routeName: (context) => Xo_Game_Bord(),
        list_V.routeName: (context) => list_V(),
        Task1.routeName: (context) => Task1(),
        Face_Book.routeName: (context) => Face_Book(),
        Chat_WhatsApp.routeName: (context) => Chat_WhatsApp(),
        HomeScrean_FaceBook.routeName: (context) => HomeScrean_FaceBook(),
        test_Contact_Screan.routeName: (context) => test_Contact_Screan(),
        Home_Islame.routeName: (context) => Home_Islame(),
      },
      initialRoute: Welcome.routeName,
    );
  }
}
