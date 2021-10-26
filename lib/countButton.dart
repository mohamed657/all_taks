import 'package:flutter/material.dart';
import 'package:practies/Xo_Game/Xo_Game.dart';

class CountButton extends StatefulWidget {
  static const String routeName = 'Count';

  State<CountButton> createState() {
    return CountButtonState();
  }
}

class CountButtonState extends State<CountButton> {
  int Counter = 0;

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('press the button to + count'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('$Counter'),
          ElevatedButton(
            onPressed: () {
              Counter++;
              setState(() {});
            },
            child: Text('press '),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: ElevatedButton(
                onPressed: () => setState(() => isVisible = !isVisible),
                child: Text('hi')),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(20),
            //   border: Border.all(
            //     color: Colors.black
            //   )
            //
            //
            // ),
            child: Visibility(
              visible: isVisible,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'Name',
                  hintStyle: TextStyle(color: Colors.black),
                  suffixIcon: Icon(Icons.phone),
                ),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, Xo_Game.routeName),
              child: Text('Xo_Game'))
        ]),
      ),
    );
  }
}
