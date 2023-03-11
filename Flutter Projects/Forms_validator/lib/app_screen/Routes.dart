import 'package:flutter/material.dart';

class mywidget21 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (mystate21());
  }
}

class mystate21 extends State<mywidget21> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Builder(
                builder: (context) {
                  return (ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => mywidget22(),
                            ));
                      },
                      child: Text('next')));
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Router'),
        ),
      ),
    ));
  }
}

class mywidget22 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (mystate22());
  }
}

class mystate22 extends State<mywidget22> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Center(
        child: Column(
          children: [
            Builder(
              builder: (context) {
                return (ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, '/second');
                    },
                    child: Text('go back')));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('second screen'),
      ),
    ));
  }
}
