import 'package:flutter/material.dart';

//ExpansionPannelList
//Static code

class MyWidget19 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget19> {
  bool flag1 = false;
  bool flag2 = false;
  ExpansionPanelList getPanelList() {
    return (ExpansionPanelList(
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          if (panelIndex == 0) {
            flag1 = !isExpanded;
          }
          if (panelIndex == 1) {
            flag2 = !isExpanded;
          }
        });
      },
      children: [
        ExpansionPanel(
            isExpanded: flag1,
            headerBuilder: (context, isExpanded) {
              return (ListTile(
                title: Text('item1'),
              ));
            },
            body: ListTile(
              title: Text('ex item1'),
              subtitle: Text('subtitle1'),
            )),
        ExpansionPanel(
            isExpanded: flag2,
            headerBuilder: (context, isExpanded) {
              return (ListTile(
                title: Text('item2'),
              ));
            },
            body: ListTile(
              title: Text('ex item2'),
              subtitle: Text('subtitle2'),
            ))
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
            children: [getPanelList()],
          ),
          appBar: AppBar(
            title: Text('drawer'),
          )),
    ));
  }
}
