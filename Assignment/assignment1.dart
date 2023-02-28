import 'package:flutter/material.dart';
// Assignment of Login Page

class MyTask1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (Mystate());
  }
}

class Mystate extends State<MyTask1> {
  var username = "Aditya";
  var password = "Patil";
  var msg = "";
  var Mycontroller1 = TextEditingController();
  var Mycontroller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(children: [
            Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: Mycontroller1,
                  decoration: const InputDecoration(
                      labelText: "Enter user name ",
                      border: OutlineInputBorder()),
                )),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                controller: Mycontroller2,
                decoration: const InputDecoration(
                    labelText: "Enter password", border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: Text('click here'),
                onPressed: () {
                  setState(() {
                    username = Mycontroller1.text;
                    password = Mycontroller2.text;
                    if (username == 'Aditya' && password == 'Patil') {
                      msg = 'valid';
                    } else {
                      msg = 'invalid';
                    }
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(msg),
            )
          ]),
          appBar: AppBar(
            title: Text("login page "),
          )),
    ));
  }
}
