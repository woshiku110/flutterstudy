import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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
        title: Text(widget.title),
      ),
      body: Text('I am page two'),
    );
  }
}