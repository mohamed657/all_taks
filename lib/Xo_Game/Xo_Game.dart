import 'package:flutter/material.dart';
import 'package:practies/List_Task1/List_View.dart';
import 'package:practies/Xo_Game/Xo_Game_Bord.dart';

class Xo_Game extends StatelessWidget {
  static const String routeName = 'XoGame';
  String PlayerName1 = '';
  String PlayerName2 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        centerTitle: true,
        leading: Container(
          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
          color: Colors.red,
          child: ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, list_V.routeName),
            child: Text('LV'),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (text) {
                PlayerName1 = text;
              },
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Player 1 Name',
                  hintStyle: TextStyle(color: Colors.black)),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (text) {
                PlayerName2 = text;
              },
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintStyle: TextStyle(color: Colors.black),
                  hintText: 'Player 2 Name'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(
                    context, Xo_Game_Bord.routeName,
                    arguments: Players_Name(PlayerName1, PlayerName2)),
                child: Text('Start')),
          ],
        ),
      ),
    );
  }
}

class Players_Name {
  String Player11;
  String Player22;

  Players_Name(this.Player11, this.Player22);
}
