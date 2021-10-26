import 'package:flutter/material.dart';

class Story_Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Stack(
        children: [
          ClipRRect(
            child: Image.asset('assets/image/facebookStory.jpg'),
            borderRadius: BorderRadius.circular(12),
          ),
          Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),
              child: Icon(
                Icons.person,
                size: 25,
                color: Colors.white,
              )),
          Positioned(
            bottom: 1,
            left: 9,
            child: Text(
              'Owner',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
