import 'package:flutter/material.dart';
import 'package:practies/countButton.dart';

class NavRou extends StatefulWidget {
  static const String routeName = 'route';

  State<NavRou> createState() {
    return NavRouState();
  }
}

class NavRouState extends State<NavRou> {
  List<ItemData> item = [
    ItemData('assets/image/Car.jpg', 'hallo u are in the first page'),
    ItemData('assets/image/Car.jpg', 'hathe first page'),
    ItemData('assets/image/Car.jpg', 'hallo first page'),
    ItemData('assets/image/Car.jpg', 'hallo u are  page'),
    ItemData('assets/image/Car.jpg', 'hallo u are  page'),
    ItemData('assets/image/Car.jpg', 'hallo u are  page'),
    ItemData('assets/image/Car.jpg', 'hallo u are  page'),
    ItemData('assets/image/Car.jpg', 'hallo u are  page'),
    ItemData('assets/image/Car.jpg', 'hallo u are  page'),
    ItemData('assets/image/Car.jpg', 'hallo u are  page'),
  ];

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(item[count].imagePath),
          Text(item[count].text),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    if (count == item.length - 1) return;

                    count++;
                    setState(() {});
                  },
                  child: Text('Next')),
              ElevatedButton(
                  onPressed: () {
                    if (count == 0) return;
                    count--;
                    setState(() {});
                  },
                  child: Text('back')),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, CountButton.routeName);
              },
              child: Text('Next Levele'))
        ],
      ),
    );
  }
}

class ItemData {
  String imagePath;
  String text;

  ItemData(this.imagePath, this.text);
}
