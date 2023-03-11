import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (const Center(
      child: Text(
        'hello world',
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 30, color: Colors.red),
      ),
    ));
  }
}
