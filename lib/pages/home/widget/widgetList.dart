import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterstudy/modal/CounterModal.dart';
import 'package:provider/provider.dart';
class  WidgetList extends StatefulWidget{
  final passData;
  WidgetList({Key key,this.passData}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    return _WidgetList();
  }

}

class _WidgetList extends State<WidgetList>{

  @override
  Widget build(BuildContext context) {
    print('second page fresh');
    var list = List<int>();
    ///字符串解码
    jsonDecode(widget.passData).forEach(list.add);
    String value = Utf8Decoder().convert(list);
    var widgetPassData = jsonDecode(value);
    return Scaffold(
      appBar: AppBar(
        title: Text(widgetPassData['name']),
      ),
      body: Text('I am page two'),
      floatingActionButton: Consumer<CounterModal>(
        builder: (context,CounterModal counter,child)=>FloatingActionButton(
          onPressed: counter.increment,
          child: child,
        ),
        child: Icon(Icons.add),
      )
    );
  }
}