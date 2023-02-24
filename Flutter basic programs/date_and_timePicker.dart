import 'package:flutter/material.dart';

// DatePicker
// TimePicker

class MyWidget12 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget12> {
  DateTime? d1 = DateTime.now();
  TimeOfDay t1 =
      TimeOfDay(hour: DateTime.now().hour, minute: DateTime.now().minute);
  TimeOfDay? t2;
  String? msg = "";
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body: Column(
            children: [
              Builder(
                builder: (context) {
                  return (ElevatedButton(
                    onPressed: () {
                      showTimePicker(context: context, initialTime: t1).then(
                        (value) {
                          setState(() {
                            t2 = value;
                            msg = t2?.format(context);
                          });
                        },
                      );
                    },
                    child: Text('time'),
                  ));
                },
              ),
              Builder(
                builder: (context) {
                  return (ElevatedButton(
                    onPressed: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2002),
                              lastDate: DateTime(2023))
                          .then(
                        (value) {
                          setState(() {
                            d1 = value;
                          });
                        },
                      );
                    },
                    child: Text('date'),
                  ));
                },
              ),
              Text('selected date $d1'),
              Text("selected time $msg"),
            ],
          ),
          appBar: AppBar(
            title: Text('floating button'),
          )),
    ));
  }
}
