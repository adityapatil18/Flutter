import 'package:flutter/material.dart';

class MyWidget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body: const Center(
            child: Text(
              "hello world 3",
              style: TextStyle(fontSize: 40, color: Colors.orange),
            ),
          ),
          appBar: AppBar(title: const Text('this is title'))),
    ));
  }
}
