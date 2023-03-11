import 'package:flutter/material.dart';

//Data Table
//static code

class MyWidget17 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget17> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: DataTable(columns: [
            DataColumn(label: Text('id'), numeric: true),
            DataColumn(label: Text('name')),
          ], rows: [
            DataRow(cells: [
              DataCell(
                Text('1'),
                onTap: () {},
              ),
              DataCell(Text('ABC'))
            ], selected: true),
            DataRow(cells: [
              DataCell(
                Text('2'),
                onTap: () {},
              ),
              DataCell(Text('XYZ'))
            ])
          ]),
          appBar: AppBar(title: (Text('drawer')))),
    ));
  }
}
