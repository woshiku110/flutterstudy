import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterstudy/modal/CounterModal.dart';
import 'package:provider/provider.dart';


class FormList extends StatefulWidget{
  final title = 'form';
  @override
  State<StatefulWidget> createState() {
    return _FormList();
  }
}

class _FormList extends State<FormList>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title+'hhaha'),
      ),
      body: Text('I am page two lals'),
    );
  }
}