import 'package:flutter/material.dart';
import 'package:practies/Whats_App/Person2.dart';

import 'End_Screan.dart';
import 'Person1.dart';

class Home_Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/image/background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
      Column(
        children: [
          Person1(),
          SizedBox(
            height: 20,
          ),
          Person2(),
          Spacer(),
          End_Screan(),
        ],
      )
    ]);
  }
}
