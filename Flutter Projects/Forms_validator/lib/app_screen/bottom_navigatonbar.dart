import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

//bottom navigationbar

class MyWidget15 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (Mystate());
  }
}

class Mystate extends State<MyWidget15> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            Fluttertoast.showToast(msg: 'you selected $value');
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance), label: 'one'),
            BottomNavigationBarItem(icon: Icon(Icons.space_bar), label: 'two')
          ],
        ),
      ),
    ));
  }
}
