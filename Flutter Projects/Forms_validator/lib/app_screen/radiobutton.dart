import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_screen/checkbox.dart';

//Radio button

class MyWidget8 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget8> {
  bool? flag1 = true;
  bool? flag2 = true;
  String? msg = "";
  String? gv = "male";
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body: Column(
            children: [
              ListTile(
                title: Text('Male'),
                leading: Radio(
                  value: 'male',
                  groupValue: gv,
                  onChanged: ((value) {
                    setState(() {
                      gv = value;
                    });
                  }),
                ),
              ),
              ListTile(
                title: Text('Female'),
                leading: Radio(
                  value: 'female',
                  groupValue: gv,
                  onChanged: ((value) {
                    setState(() {
                      gv = value;
                    });
                  }),
                ),
              ),
              ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      msg = gv;
                    });
                  }),
                  child: Text('ok')),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text('you selected $msg'),
              )
            ],
          ),
          appBar: AppBar(
            title: Text('text field'),
          )),
    ));
  }
}
