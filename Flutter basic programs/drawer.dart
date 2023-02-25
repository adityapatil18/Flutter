import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// Drawer Class

class MyWidget16 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget16> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: Drawer(
            child: Builder(builder: ((context) {
              return (ListView(
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text(
                      'header information',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Fluttertoast.showToast(msg: 'option 1');
                      Navigator.pop(context);
                    },
                    title: Text('option 1'),
                    leading: Icon(Icons.settings),
                  ),
                  ListTile(
                    onTap: () {
                      Fluttertoast.showToast(msg: 'option 2');
                      Navigator.pop(context);
                    },
                    title: Text('option 2'),
                    leading: Icon(Icons.email),
                  ),
                  ListTile(
                    onTap: () {
                      Fluttertoast.showToast(msg: 'option 3');
                      Navigator.pop(context);
                    },
                    title: Text('option 3'),
                    leading: Icon(Icons.keyboard_option_key),
                  )
                ],
              ));
            })),
          ),
          appBar: AppBar(
            title: Text('Drawer'),
          )),
    ));
  }
}
