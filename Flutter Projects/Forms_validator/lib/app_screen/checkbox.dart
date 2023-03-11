import 'package:flutter/material.dart';
//checkbox

class MyWidget7 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget7> {
  bool? flag1 = true;
  bool? flag2 = true;
  String msg = "";

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body: Column(
            children: [
              ListTile(
                title: Text('Dart'),
                leading: Checkbox(
                  value: flag1,
                  onChanged: (value) {
                    setState(() {
                      flag1 = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('C'),
                leading: Checkbox(
                  value: flag2,
                  onChanged: (value) {
                    setState(() {
                      flag2 = value;
                    });
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      msg = "";
                      if (flag1 == true) {
                        msg = "Dart";
                      }
                      if (flag2 == true) {
                        msg += "C";
                      }
                    });
                  }),
                  child: Text('ok')),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text('you selected  $msg '),
              )
            ],
          ),
          appBar: AppBar(
            title: Text('textfiled'),
          )),
    ));
  }
}
