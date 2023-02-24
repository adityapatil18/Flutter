import 'dart:async';

import 'package:database_application/student.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'student.dart';
import 'package:fluttertoast/fluttertoast.dart';

class mydb {
  late Future<Database> db;

  Future<void> open() async {
    db = openDatabase(join(await getDatabasesPath(), "studdb"),
        onCreate: (db, version) {
      return (db.execute(
          "create table student(username varchar(45),password varchar(45)"));
    }, version: 1);
  }

  insert(student stud) async {
    Database db2 = await db;

    await db2.insert('account', stud.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
    Fluttertoast.showToast(msg: "data inserted into tabel");
  }
}
