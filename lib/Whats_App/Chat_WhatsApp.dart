import 'package:flutter/material.dart';

import 'body.dart';

class Chat_WhatsApp extends StatelessWidget {
  static const String routeName = 'Chat';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Person'),
        backgroundColor: Colors.black,
        actions: [
          Expanded(
              child: Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/image/person.jpg'),
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                'Person',
                style: TextStyle(color: Colors.white),
              ),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
              IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
          ))
        ],
      ),
      body: Home_Body(),
    );
  }
}
