import 'package:flutter/material.dart';
import 'package:practies/Xo_Game/Xo_Game.dart';
import 'package:practies/Xo_Game/Xo_Game_Button.dart';

class Xo_Game_Bord extends StatefulWidget {
  static const String routeName = 'GameBord';

  @override
  State<Xo_Game_Bord> createState() => _Xo_Game_BordState();
}

class _Xo_Game_BordState extends State<Xo_Game_Bord> {
  int Player1Score = 0;

  int Player2Score = 0;

  int counter = 0;

  List<String> textButtons = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];

  @override
  Widget build(BuildContext context) {
    Players_Name arguments =
        ModalRoute.of(context)!.settings.arguments as Players_Name;
    return Scaffold(
      appBar: AppBar(
        title: Text('Xo_Game'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
            'Score',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '${arguments.Player11}: $Player1Score',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                '${arguments.Player22} : $Player2Score ',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Xo_Game_Button(textButtons[0], onPressedButton, 0),
                Xo_Game_Button(textButtons[1], onPressedButton, 1),
                Xo_Game_Button(textButtons[2], onPressedButton, 2),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Xo_Game_Button(textButtons[3], onPressedButton, 3),
                Xo_Game_Button(textButtons[4], onPressedButton, 4),
                Xo_Game_Button(textButtons[5], onPressedButton, 5),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Xo_Game_Button(textButtons[6], onPressedButton, 6),
                Xo_Game_Button(textButtons[7], onPressedButton, 7),
                Xo_Game_Button(textButtons[8], onPressedButton, 8),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //////////////////////////////////////////////////////////////
  void onPressedButton(int index) {
    if (textButtons[index].isNotEmpty) {
      return;
    }
    String PlayerSymble = counter % 2 == 0 ? 'o' : 'x';
    textButtons[index] = PlayerSymble;

    if (CheckWinner(PlayerSymble) == 'o') {
      Player1Score++;
      ClearBord();
      return;
    } else if (CheckWinner(PlayerSymble) == 'x') {
      Player2Score++;
      ClearBord();
      return;
    }

    if (counter == 8) {
      ClearBord();
    }
    counter++;

    setState(() {});
  }

  ////////////////////////////////////////////////////////
  void ClearBord() {
    textButtons = [
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
    ];
    counter = 0;
    setState(() {});
  }

///////////////////////////////////////////////////////
  String? CheckWinner(String symble) {
    //Row
    /////////////////////////////////////////////////////
    for (var i = 0; i < 9; i += 3) {
      if (textButtons[i] == symble &&
          textButtons[i + 1] == symble &&
          textButtons[i + 2] == symble) {
        return symble;
      }
    }
    //Column
    //////////////////////////////////////////////////////////
    for (var i = 0; i < 3; i++) {
      if (textButtons[i] == symble &&
          textButtons[1 + 3] == symble &&
          textButtons[i + 6] == symble) {
        return symble;
      }
    }
    // x
    ///////////////////////////////////////////////////////////
    if (textButtons[0] == symble &&
        textButtons[4] == symble &&
        textButtons[8] == symble) {
      return symble;
    }

    if (textButtons[2] == symble &&
        textButtons[4] == symble &&
        textButtons[6] == symble) {
      return symble;
    }
    ///////////////////////////////////////////////////////////
  }
}
