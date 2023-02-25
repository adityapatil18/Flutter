import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
//AppBar
//Icon Button
//FlutterToast

class MyWidget14 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget14> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
        centerTitle: true,
        leading: IconButton(onPressed: null, icon: Icon(Icons.menu)),
        title: Text('demo appBar'),
        actions: [
          IconButton(
              onPressed: () {
                Fluttertoast.showToast(
                    toastLength: Toast.LENGTH_SHORT,
                    msg: 'alaram',
                    gravity: ToastGravity.CENTER);
              },
              icon: Icon(Icons.access_alarm)),
          IconButton(
              onPressed: () {
                Fluttertoast.showToast(
                    toastLength: Toast.LENGTH_SHORT,
                    msg: "accessibility",
                    gravity: ToastGravity.CENTER);
              },
              icon: Icon(Icons.accessibility)),
        ],
      )),
    ));
  }
}
