import 'package:flutter/material.dart';

class End_Screan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 300,
          height: 70,
          margin: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(30),
              ),
              label: Text(
                'Type Your Massage',
                style: TextStyle(color: Colors.white),
              ),
              prefixIcon: Icon(
                Icons.tag_faces_outlined,
                color: Colors.white,
              ),
              suffixIcon: Icon(Icons.attach_file, color: Colors.white),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40), color: Colors.black),
          child: Icon(
            Icons.mic,
            color: Colors.white,
            size: 25,
          ),
        )
      ],
    );
  }
}
