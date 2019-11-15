import 'package:flutter/material.dart';
import 'package:flutterstudy/modal/CounterModal.dart';
import 'package:provider/provider.dart';

class HomePageTwo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomePageTwo();
  }


}
class _HomePageTwo extends State<HomePageTwo>{
  CounterModal counterModal;
  int textSize;

  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if(counterModal == null){
       counterModal = Provider.of<CounterModal>(context);
       textSize = Provider.of<int>(context);
       counterModal.increment();
    }
    print('load first page');
  }

  @override
  Widget build(BuildContext context) {
    print('first page rebuild');
    return Scaffold(
        body: Text('woshi123'+counterModal.value.toString()),
        floatingActionButton: FloatingActionButton(
          onPressed: counterModal.increment,
          child: Icon(Icons.add),
        ),
      );
  }

}