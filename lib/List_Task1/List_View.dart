import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practies/List_Task1/DataList.dart';

import 'Category_Task1.dart';
import 'text_Style_Task1.dart';

class list_V extends StatelessWidget {
  static const routeName = 'list';

  List<ItemData> listItems = [
    ItemData('moad', 'assets/image/Car.jpg'),
    ItemData('moad', 'assets/image/cook.jpg'),
    ItemData('moad', 'assets/image/Car.jpg'),
    ItemData('moad', 'assets/image/Car.jpg'),
    ItemData('moad', 'assets/image/cook.jpg'),
    ItemData('moad', 'assets/image/Car.jpg'),
    ItemData('moad', 'assets/image/Car.jpg'),
    ItemData('moad', 'assets/image/Car.jpg'),
    ItemData('moad', 'assets/image/cook.jpg'),
    ItemData('moad', 'assets/image/Car.jpg'),
    ItemData('moad', 'assets/image/Car.jpg'),
    ItemData('moad', 'assets/image/Car.jpg'),
    ItemData('moad', 'assets/image/Car.jpg'),
    ItemData('moad', 'assets/image/Car.jpg'),
    ItemData('moad', 'assets/image/Car.jpg'),
    ItemData('moad', 'assets/image/Car.jpg'),
    ItemData('moad', 'assets/image/Car.jpg'),
    ItemData('moad', 'assets/image/Car.jpg'),
    ItemData('moad', 'assets/image/Car.jpg'),
    ItemData('moad', 'assets/image/Car.jpg'),
    ItemData('moad', 'assets/image/Car.jpg'),
    ItemData('moad', 'assets/image/Car.jpg'),
    ItemData('moad', 'assets/image/Car.jpg'),
    ItemData('moad', 'assets/image/Car.jpg'),
    ItemData('moad', 'assets/image/Car.jpg'),
    ItemData('moad', 'assets/image/Car.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome in ListView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              text_Task1('News'),
              text_Task1('Category'),
            ],
          ),
          Expanded(
              child: GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 2 / 1),
            itemBuilder: (BuildContext, index) =>
                Category_Task1(listItems[index].Path, listItems[index].title),
            itemCount: listItems.length,
          )),
        ],
      ),
    );
  }
}
