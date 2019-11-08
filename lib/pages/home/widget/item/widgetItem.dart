
import 'package:flutter/material.dart';
import 'package:flutterstudy/domain/FormData.dart';
import 'package:flutterstudy/domain/FormPassData.dart';
import 'package:flutterstudy/pages/util/Sizes.dart';

class WidgetItem extends StatelessWidget{
  final titleName;
  final titleIcon;
  final List<FormData> list;
  final ValueChanged<FormPassData> onCurrentIndexChange;
  WidgetItem({Key key,@required this.titleName,@required this.titleIcon,@required this.list,@required this.onCurrentIndexChange}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[WidgetItemTitle(title: titleName,icon: titleIcon),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top:Sizes.setHeight(20),bottom: Sizes.setHeight(20)),
            child: WidgetItemContent(list: list,onCurrentIndexChange: onCurrentIndexChange,)
          )],
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
        padding: EdgeInsets.only(top: Sizes.setHeight(25)),
        color:Color.fromARGB(255, 241,238,239),
        child: Stack(
          children: <Widget>[
            Container(
                width: double.infinity,
                height: Sizes.setHeight(150),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      color:Colors.white,
                      width: double.infinity,
                      height: Sizes.setHeight(75),
                      child: Row(children: <Widget>[
                        Container(
                          width: Sizes.setHeight(150),
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
                width: Sizes.setHeight(150),
                height: Sizes.setHeight(150),
                color: Colors.white,
                child: Center(
                  child: ClipOval(
                    child: Container(
                      color: Color.fromRGBO(0,150,239, 1.0),
                      width: Sizes.setHeight(120),
                      height: Sizes.setHeight(120),
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

class WidgetItemContent extends StatelessWidget{
  final List<FormData> list;
  final ValueChanged<FormPassData> onCurrentIndexChange;
  WidgetItemContent({Key key,@required this.list,@required this.onCurrentIndexChange}):super(key:key);
  void _handleTap(BuildContext buildContext,FormData formData){
    this.onCurrentIndexChange(new FormPassData(buildContext, formData));
  }
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: new NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      childAspectRatio: 0.8,
      shrinkWrap: true,
      children: list.asMap().keys.map((index)=> Container(
        height: Sizes.setHeight(100),
        decoration: BoxDecoration(
          color: Colors.white,
          border: list[index].index == 1 ? index > 3
              ?
          Border(top:BorderSide(color: Colors.grey,width: 0.5),left:BorderSide(color: Colors.grey,width: 0.5),right: BorderSide(color: Colors.grey,width: 0.5))
              :
          Border(left:BorderSide(color: Colors.grey,width: 0.5),right: BorderSide(color: Colors.grey,width: 0.5))
              :
          index >= 3
              ?
          Border(top:BorderSide(color: Colors.grey,width: 0.5))
              :
              null
        ),
        child: GestureDetector(
          onTap: ()=>this._handleTap(context,list[index]),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[list[index].icon == null ? Text(""): Icon(list[index].icon,size: 50,color:  Color.fromRGBO(0,150,239, 1.0),),Text(list[index].name,style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.grey
              ))],
            ),
          ),
        )
      )).toList(),
    );
  }
}