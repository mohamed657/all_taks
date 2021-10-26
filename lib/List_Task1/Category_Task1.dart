import 'package:flutter/material.dart';

class Category_Task1 extends StatelessWidget {
  String Path_Task1;
  String title_Stak_Task1;

  Category_Task1(this.Path_Task1, this.title_Stak_Task1);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Image.asset(
            Path_Task1,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
              padding: EdgeInsets.all(10),
              color: Color.fromARGB(170, 145, 57, 60),
              margin: EdgeInsets.all(10),
              child: Text(title_Stak_Task1)),
        ],
      ),
    );
  }
}
