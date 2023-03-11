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
  double p = 20;

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("login page "),
          ),
          body: SingleChildScrollView(
            child: Column(children: [
              Container(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/images/icon.jpg'),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: Mycontroller1,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.mail),
                      labelText: "Enter email",
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  controller: Mycontroller2,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.lock),
                    labelText: "Enter password",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: p,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: Text('click here'),
                  onPressed: () {
                    setState(() {
                      username = Mycontroller1.text;
                      password = Mycontroller2.text;
                      if (username == 'adityagangane@gmail.com' &&
                          password == '123456789') {
                        msg = "succesfully login ";
                        p = 20;
                      } else {
                        msg = 'Invalid email and password';
                        p = p + 20;
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
          )),
    ));
  }
}
