import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Alert dialouge

class MyWidget13 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget13> {
  String msg = "";

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body: Column(
            children: [
              Builder(
                builder: (context) {
                  return (ElevatedButton(
                    child: Text('exit'),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return (AlertDialog(
                            title: Text('do u want to exit'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    setState(() {
                                      msg = "yes";
                                      Navigator.pop(context);
                                    });
                                  },
                                  child: Text('yes')),
                              TextButton(
                                  onPressed: () {
                                    setState(() {
                                      msg = "No";
                                      Navigator.pop(context);
                                    });
                                  },
                                  child: Text('No'))
                            ],
                          ));
                        },
                      );
                    },
                  ));
                },
              ),
              Text('you selected $msg')
            ],
          ),
          appBar: AppBar(title: Text('floating button '))),
    ));
  }
}
