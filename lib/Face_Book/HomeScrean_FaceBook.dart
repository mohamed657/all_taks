import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practies/Face_Book/PostScrean_FaceBook.dart';

import 'Story_Widget.dart';

class HomeScrean_FaceBook extends StatelessWidget {
  static const String routeName = 'HomeScrean_FaceBook';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        //child: Image.asset('assets/image/facebookStory.jpg'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 2,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (context, index) => Story_Widget())),
            Expanded(
                flex: 8,
                child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => PostScrean_FaceBook()))
          ],
        ),
      ),
    );
  }
}
