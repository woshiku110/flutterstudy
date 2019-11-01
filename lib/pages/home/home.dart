import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterstudy/pages/home/widget.dart';
import 'package:flutterstudy/pages/home/home_page_two.dart';
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
        WidgetComponent(),
        HomePageTwo()
  ];
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
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
          fixedColor: Color.fromRGBO(0,150,239, 1.0),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                title: Text("WIDGET"),
                icon:Icon(Icons.widgets)
            ),
            BottomNavigationBarItem(
                title: Text("组件收藏"),
                icon:Icon(Icons.favorite)
            )
          ],);
    }
}