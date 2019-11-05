import 'package:flutter/material.dart';
import 'package:flutterstudy/pages/util/Size.dart';

class WidgetComponent extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Widget();
  }
}

class _Widget extends State<WidgetComponent>{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromARGB(255, 241,238,239),
      child: Scrollbar(
              child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(children: [WidgetItem()])
              )
          )
    );
  }
}

class WidgetItem extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _WidgetItem();
  }

}
class _WidgetItem extends State<WidgetItem>{
  var titleName = "Element";
  var titleIcon = Icons.euro_symbol;
  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[WidgetItemTitle(title: titleName,icon: titleIcon),
                WidgetItemContent()],
            ),
    );
  }
}

class WidgetItemTitle extends StatelessWidget{
  final title;
  final icon;
  WidgetItemTitle({Key key,@required this.title,@required this.icon}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.infinity,
            color:Color.fromARGB(255, 241,238,239),
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: Size.setHeight(150),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      color:Colors.white,
                      width: double.infinity,
                      height: Size.setHeight(75),
                      child: Row(children: <Widget>[
                        Container(
                          width: Size.setHeight(150),
                        ),
                        Text(title, style: TextStyle(
                            fontSize: 24.0,
                            color: Color.fromRGBO(0,150,239, 1.0)
                        ),),],)
                    ),
                  )
                ),
                ClipOval(
                  child: Container(
                    width: Size.setHeight(150),
                    height: Size.setHeight(150),
                    color: Colors.white,
                    child: Center(
                      child: ClipOval(
                        child: Container(
                          color: Color.fromRGBO(0,150,239, 1.0),
                          width: Size.setHeight(120),
                          height: Size.setHeight(120),
                          child: Icon(this.icon,color: Colors.white,),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
    );
  }
}
class IconData {
    var name;
    var icon;
    int index;
    IconData(name,icon,index){
      this.name = name;
      this.icon = icon;
      this.index = index;
    }
}

class WidgetItemContent extends StatelessWidget{
  final List<IconData> _list = [
    new IconData('Form', Icons.access_alarms,0),
    new IconData('Frame', Icons.access_time,1),
    new IconData('Media', Icons.ac_unit,2),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 0.8,
        shrinkWrap: true,
        children: _list.map((item)=> Container(
                      height: Size.setHeight(100),
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: item.index == 1 ? Border(left:BorderSide(color: Colors.grey,width: 0.5),right: BorderSide(color: Colors.grey,width: 0.5)):null,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[Icon(item.icon,size: 50,),Text(item.name,style: TextStyle(
                            fontSize: 24.0,
                            color: Color.fromRGBO(0,134,134,134)
                        ))],
                      ),
        )).toList(),
      );
  }
}
