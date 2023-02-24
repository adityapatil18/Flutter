import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyApp> {
  var fname = '';
  var mycontroller1 = TextEditingController();
  var mycontroller2 = TextEditingController();
  var mycontroller3 = TextEditingController();
  var name = "";
  var age = "";
  var phone_number = "";
  var id = 0;
  add() async {
    DatabaseReference db = FirebaseDatabase.instance.ref('student/{$id}');
    await db.set({"name": name, "age": age, "phone_number": phone_number});
    id = id + 1;
  }

  update() async {
    DatabaseReference db = FirebaseDatabase.instance.ref('student/{$id}');
    await db.update({'age': 22});
  }

  delete() async {
    DatabaseReference db = FirebaseDatabase.instance.ref('student/{$id}');
    await db.remove();
  }

  select() async {
    DatabaseReference db = FirebaseDatabase.instance.ref();
    DataSnapshot snapshot = await db.child('student/{$name}').get();
    setState(() {
      mycontroller1.text = snapshot.child('name').value.toString();
      mycontroller2.text = snapshot.child('age').value.toString();
      mycontroller3.text = snapshot.child('phone_number').value.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('firebase crud'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'fill the form ',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: mycontroller1,
                decoration: InputDecoration(
                    labelText: 'enter name', border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: mycontroller2,
                decoration: InputDecoration(
                    labelText: 'enter age', border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: mycontroller3,
                decoration: InputDecoration(
                    labelText: 'enter phone number ',
                    border: OutlineInputBorder()),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          name = mycontroller1.text;
                          age = mycontroller2.text;
                          phone_number = mycontroller3.text;
                          mycontroller1.text = '';
                          mycontroller2.text = '';
                          mycontroller3.text = '';

                          add();
                        });
                      },
                      child: Text('submit')),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          update();
                        });
                      },
                      child: Text('update')),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          delete();
                        });
                      },
                      child: Text('delete')),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          select();
                        });
                      },
                      child: Text('select')),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
