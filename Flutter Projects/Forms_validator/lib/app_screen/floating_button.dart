import 'package:flutter/material.dart';

class mywidget77 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (mystate());
  }
}

class mystate extends State<mywidget77> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                i++;
              });
            },
            child: Icon(Icons.add),
          ),
          body: Center(
            child: Text(
              'counter $i',
              style: TextStyle(fontSize: 25),
            ),
          ),
          appBar: AppBar(
            title: Text('floating button'),
          )),
    ));
  }
}
