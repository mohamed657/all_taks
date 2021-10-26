import 'package:flutter/material.dart';

class Person1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/image/person1.jpg'),
            radius: 35,
          ),
        ),
        Container(
          width: 250,
          height: 70,
          child: TextField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white)),
                label: Text(
                  'this First massage',
                  style: TextStyle(color: Colors.white),
                )),
          ),
        )
      ],
    );
  }
}
