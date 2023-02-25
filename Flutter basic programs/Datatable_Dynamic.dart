import 'package:flutter/material.dart';

//Data Table
//Static and Dyanamic code

class MyWidget18 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class student {
  String id = '';
  String name = '';
  student({required this.id, required this.name});
}

//static code
class MyState extends State<MyWidget18> {
  List<DataRow> getRows() {
    List<DataRow> rows = [];
    student s1 = new student(id: '123', name: 'abc');
    student s2 = new student(id: '789', name: 'xyz');
    DataRow d1 =
        new DataRow(cells: [DataCell(Text(s1.id)), DataCell(Text(s1.name))]);
    DataRow d2 =
        new DataRow(cells: [DataCell(Text(s2.id)), DataCell(Text(s2.name))]);
    rows.add(d1);
    rows.add(d2);
    return rows;
  }

  //Dynamic code
  List<student> getStudents() {
    List<student> students = [];
    student s1 = new student(id: '789', name: 'text');
    student s2 = new student(id: '234', name: 'demo');

    students.add(s1);
    students.add(s2);
    return students;
  }

  List<DataRow> getRows1() {
    List<DataRow> Rows = [];
    List<student> studs = getStudents();
    for (int i = 0; i < studs.length; i++) {
      Rows.add(DataRow(cells: [
        DataCell(
          Text(studs[i].id),
          onTap: () {},
        ),
        DataCell(Text(studs[i].name))
      ]));
    }
    return Rows;
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: DataTable(
            columns: [
              DataColumn(label: Text('id'), numeric: true),
              DataColumn(label: Text('name')),
            ],
            rows: getRows1(),
          ),
          appBar: AppBar(title: (Text('drawer')))),
    ));
  }
}
