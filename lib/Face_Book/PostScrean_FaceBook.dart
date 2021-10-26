import 'package:flutter/material.dart';

import 'Button_Style_FaceBook.dart';

class PostScrean_FaceBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      'Owner',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          '3h',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.public,
                          color: Colors.black,
                          size: 20,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'My Post',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text('100'),
                SizedBox(
                  width: 5,
                ),
                Image.asset(
                  'assets/image/like.jpg',
                  width: 45,
                  height: 25,
                ),
                Spacer(),
                Text('100 Comments'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.black,
              height: 1,
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button_Style_FaceBook('assets/image/singleLike.jpg', ' Like'),
                Button_Style_FaceBook('assets/image/comment.jpg', ' Comment'),
                Button_Style_FaceBook('assets/image/share.png', ' Share'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.black,
              height: 1,
              thickness: 1,
            ),
          ],
        ));
  }
}
