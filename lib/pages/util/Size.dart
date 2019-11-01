import 'package:flutter_screenutil/flutter_screenutil.dart';

class Size{
  static  setWidth(double width){
    return ScreenUtil.getInstance().setWidth(width);
  }
  static  setHeight(double height){
    return  ScreenUtil.getInstance().setHeight(height);
  }

  static var scaleWidth =  ScreenUtil.getInstance().scaleHeight;
  static var scaleHeight = ScreenUtil.getInstance().scaleWidth;
  static var screenHeight = ScreenUtil.screenHeight;
  static var screenWidth = ScreenUtil.screenWidth;
}