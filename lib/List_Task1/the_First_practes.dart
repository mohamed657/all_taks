import 'package:flutter/material.dart';
import 'package:practies/List_Task1/text_Style_Task1.dart';

class Task1 extends StatelessWidget {
  static const String routeName = 'task1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              text_Task1('News'),
              text_Task1('Category'),
            ],
          ),
        ],
      ),
    );
  }
}
