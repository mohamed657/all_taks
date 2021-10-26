import 'package:flutter/material.dart';

class Person2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 250,
          height: 70,
          child: TextField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white)),
                label: Text(
                  'This Secound Massage',
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/image/person2.jpg'),
            radius: 35,
          ),
        )
      ],
    );
  }
}
