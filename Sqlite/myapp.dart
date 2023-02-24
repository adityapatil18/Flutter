import 'package:database_application/databasesevices.dart';
import 'package:database_application/student.dart';
import 'package:flutter/material.dart';

class myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (mystate());
  }
}

class mystate extends State<myapp> {
  var mycontoller1 = TextEditingController();
  var mycontroller2 = TextEditingController();
  mydb db = mydb();
  void initState() {
    super.initState();
    db.open();
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "sqlite CRUD",
            ),
            centerTitle: true,
          ),
          body: Builder(builder: ((context) {
            return (Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "create account",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    controller: mycontoller1,
                    decoration: InputDecoration(
                        labelText: "Enter username",
                        border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    controller: mycontroller2,
                    decoration: InputDecoration(
                        labelText: "Enter password",
                        border: OutlineInputBorder()),
                    obscureText: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    child: Text("Submit"),
                    onPressed: () {
                      setState(() {
                        var s1 = student(
                            username: mycontoller1.text,
                            password: mycontroller2.text);
                        db.insert(s1);
                      });
                    },
                  ),
                )
              ],
            ));
          }))),
    ));
  }
}
