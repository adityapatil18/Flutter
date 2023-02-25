import 'package:flutter/material.dart';

//ExpansionPannelList
//Dynamic code

class MyWidget20 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class Item {
  String item = '';
  String subitem = '';
  Item({required this.item, required this.subitem});
}

class MyState extends State<MyWidget20> {
  List<bool> states = [false, false];
  ExpansionPanelList getPanelList() {
    List<ExpansionPanel> panels = [];
    List<Item> items = [
      Item(item: 'Item1', subitem: 'subitem1'),
      Item(item: 'Item2', subitem: 'subitem2'),
    ];
    for (int i = 0; i < items.length; i++) {
      panels.add(ExpansionPanel(
          isExpanded: states[i],
          headerBuilder: (context, isExpanded) {
            return (ListTile(
              title: Text(items[i].item),
            ));
          },
          body: ListTile(
            title: Text(items[i].item),
            subtitle: Text(items[i].subitem),
          )));
    }
    return (ExpansionPanelList(
      children: panels,
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          states[panelIndex] = !isExpanded;
        });
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
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
