import 'package:flutter/material.dart';

class mywidget88 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (mystate88());
  }
}

class mystate88 extends State<mywidget88> {
  double i = 1;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Slider(
                min: 1.0,
                max: 100.0,
                divisions: 10,
                value: i,
                onChanged: (value) {
                  setState(() {
                    i = value;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text('you selected value is $i'),
            )
          ],
        ),
        appBar: AppBar(
          title: Text('slider '),
        ),
      ),
    ));
  }
}
