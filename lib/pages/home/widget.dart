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
              children: <Widget>[WidgetItemTitle(title: titleName,icon: titleIcon)],
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
    IconData(name,icon){
      this.name = name;
      this.icon = icon;
    }
}

class WidgetItemContent extends StatelessWidget{
  final List<IconData> _list = [
    new IconData('t1', Icons.access_alarms),
    new IconData('t2', Icons.access_time),
    new IconData('t3', Icons.ac_unit),
    new IconData('t3', Icons.accessibility_new),
  ];
  @override
  Widget build(BuildContext context) {
    return  GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 1,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
        children: <Widget>[
          Image.network("https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1333189478,4259049031&fm=173&app=25&f=JPEG?w=640&h=640&s=6BA43A6238B07BA77D3C7CC60000E0E1",width: 100,height: 180,),
          Image.network("https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1333189478,4259049031&fm=173&app=25&f=JPEG?w=640&h=640&s=6BA43A6238B07BA77D3C7CC60000E0E1",width: 100,height: 180,),
          Image.network("https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1333189478,4259049031&fm=173&app=25&f=JPEG?w=640&h=640&s=6BA43A6238B07BA77D3C7CC60000E0E1",width: 100,height: 180,),
          Image.network("https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1147110391,1099568746&fm=173&app=25&f=JPEG?w=640&h=640&s=4BA43A625AFA7BAF7D302CC60000A0A1",width: 100,height: 180,),
          Image.network("https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1147110391,1099568746&fm=173&app=25&f=JPEG?w=640&h=640&s=4BA43A625AFA7BAF7D302CC60000A0A1",width: 100,height: 180,),
          Image.network("https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1147110391,1099568746&fm=173&app=25&f=JPEG?w=640&h=640&s=4BA43A625AFA7BAF7D302CC60000A0A1",width: 100,height: 180,),
          Image.network("https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1147110391,1099568746&fm=173&app=25&f=JPEG?w=640&h=640&s=4BA43A625AFA7BAF7D302CC60000A0A1",width: 100,height: 180,),
        ],
    );
  }
}
