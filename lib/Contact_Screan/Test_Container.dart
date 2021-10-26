import 'package:flutter/material.dart';

class Test_Container extends StatelessWidget {
  String Name_Test_ContactScrean;
  String Phone_Test_ContactScrean;
  bool isVesable;

  Test_Container(
      {this.Name_Test_ContactScrean = '',
      this.Phone_Test_ContactScrean = '',
      this.isVesable = false});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVesable,
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          width: double.infinity,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name / $Name_Test_ContactScrean',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Phone / $Phone_Test_ContactScrean',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          )),
    );
  }
}
