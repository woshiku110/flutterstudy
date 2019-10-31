import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterstudy/pages/home_page_one.dart';
import 'package:flutterstudy/pages/home_page_two.dart';
class Home extends StatefulWidget{
  final String title;
  Home({Key key,this.title}):super(key:key);
  @override
  State<StatefulWidget> createState()=>_Home();
}

class _Home extends State<Home>{
  int currentIndex = 0;
  _onCurrentIndexChange(int index){
    setState(() {
      currentIndex = index;
    });
    print("currentIndex: "+ index.toString());
  }
  List<Widget> list= [
        HomePageOne(),
        HomePageTwo()
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: BottomNavigation(currentIndex: currentIndex, onCurrentIndexChange: this._onCurrentIndexChange),
      body: list[currentIndex],
    );
  }
}


class BottomNavigation extends StatelessWidget{
  final currentIndex;
  final ValueChanged<int> onCurrentIndexChange;
  BottomNavigation({Key key,@required this.currentIndex,@required this.onCurrentIndexChange}): super(key:key);

  void _handleTap (index){
      onCurrentIndexChange(index);
  }

  @override
  Widget build(BuildContext context) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 24,
          currentIndex: currentIndex,
          onTap: _handleTap,
          fixedColor: Colors.deepPurple,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                title: Text("Home"),
                icon:Icon(Icons.home)
            ),
            BottomNavigationBarItem(
                title: Text("List"),
                icon:Icon(Icons.message)
            )
          ],);
    }
}