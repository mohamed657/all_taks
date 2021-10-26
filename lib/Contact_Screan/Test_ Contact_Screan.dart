import 'package:flutter/material.dart';

import 'Test_Container.dart';

class test_Contact_Screan extends StatefulWidget {
  static const String routeName = 'test_Contact';

  @override
  State<test_Contact_Screan> createState() => _test_Contact_ScreanState();
}

class _test_Contact_ScreanState extends State<test_Contact_Screan> {
  int CountVisable = 0;

  Test_Container Test_Item1 = Test_Container();

  Test_Container Test_Item2 = Test_Container();

  Test_Container Test_Item3 = Test_Container();

  TextEditingController Test_Name_Controler = TextEditingController();

  TextEditingController Test_Phone_Controler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Contact_ Screan'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: Test_Name_Controler,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.black)),
                    label: Text(
                      'Enter your Name',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    suffixIcon: Icon(
                      Icons.title,
                      color: Colors.blue,
                    )),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: Test_Phone_Controler,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.black)),
                    label: Text(
                      'Enter your Phone',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    suffixIcon: Icon(
                      Icons.phone,
                      color: Colors.blue,
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: RaisedButton(
                    onPressed: onAddpresed,
                    color: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 55),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Text('Add'),
                  ),
                ),
                Container(
                    child: RaisedButton(
                  onPressed: onDeletepresed,
                  color: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Text('Delete'),
                ))
              ],
            ),
            Test_Item1,
            Test_Item2,
            Test_Item3,
          ],
        ),
      ),
    );
  }

  void onAddpresed() {
    if (CountVisable == 0) {
      Test_Item1 = Test_Container(
        isVesable: true,
        Name_Test_ContactScrean: Test_Name_Controler.text,
        Phone_Test_ContactScrean: Test_Phone_Controler.text,
      );
      Test_Name_Controler.text = '';
      Test_Phone_Controler.text = '';
      CountVisable++;
    } else if (CountVisable == 1) {
      Test_Item2 = Test_Container(
        isVesable: true,
        Name_Test_ContactScrean: Test_Name_Controler.text,
        Phone_Test_ContactScrean: Test_Phone_Controler.text,
      );
      Test_Phone_Controler.text = '';
      Test_Name_Controler.text = '';
      CountVisable++;
    } else if (CountVisable == 2) {
      Test_Item3 = Test_Container(
          isVesable: true,
          Name_Test_ContactScrean: Test_Name_Controler.text,
          Phone_Test_ContactScrean: Test_Phone_Controler.text);
      Test_Phone_Controler.text = '';
      Test_Name_Controler.text = '';
      CountVisable++;
    }
    setState(() {});
  }

  void onDeletepresed() {
    if (CountVisable == 3) {
      Test_Item3 = Test_Container();
      CountVisable--;
    } else if (CountVisable == 2) {
      Test_Item2 = Test_Container();
      CountVisable--;
    } else if (CountVisable == 1) {
      Test_Item1 = Test_Container();
      CountVisable--;
    }
    setState(() {});
  }
}
