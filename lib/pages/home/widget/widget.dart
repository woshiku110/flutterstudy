import 'package:flutter/material.dart';
import 'package:flutterstudy/domain/FormData.dart';
import 'package:flutterstudy/domain/WidgetData.dart';
import 'package:flutterstudy/pages/home/widget/widgetItem.dart';
import 'package:flutterstudy/pages/util/Sizes.dart';
class WidgetComponent extends StatefulWidget{
  final List<WidgetData> widgetDatas = [
    new WidgetData("Element", Icons.euro_symbol, [
      new FormData('Form', Icons.table_chart,0),
      new FormData('Frame', Icons.filter_frames,1),
      new FormData('Media', Icons.perm_media,2),
    ]),
    new WidgetData("Components", Icons.settings_input_component, [
      new FormData('Navigation', Icons.navigate_before,0),
      new FormData('List', Icons.list,1),
      new FormData('Card', Icons.credit_card,2),
      new FormData('Bar', Icons.local_bar,0),
      new FormData('Dialog', Icons.dialer_sip,1),
      new FormData('Scaffold', Icons.scatter_plot,2),
      new FormData('Grid', Icons.grid_on,0),
      new FormData('Scroll', Icons.schedule,1),
      new FormData('Tab', Icons.tab,2),
      new FormData('Menu', Icons.menu,0),
      new FormData('Pick', Icons.picture_in_picture,1),
      new FormData('Clip', Icons.airline_seat_recline_normal,2),
      new FormData('Panel', Icons.pan_tool,0),
      new FormData('Progress', Icons.sync,1),
      new FormData('', null,2),
    ]),
    new WidgetData("Themes", Icons.theaters, [
      new FormData('Material', Icons.android,0),
      new FormData('Cupertino', Icons.mobile_screen_share,1),
    ])
  ];
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
                  child:
                  Container(
                    padding: EdgeInsets.only(bottom: Sizes.setHeight(20)),
                    child: Column(
                        children: widget.widgetDatas.map(
                                (widgetData)=>
                                WidgetItem(titleName: widgetData.title,
                                  titleIcon: widgetData.icon,
                                  list: widgetData.list,)
                        ).toList()
                    ),
                  )
              )
          )
    );
  }
}

