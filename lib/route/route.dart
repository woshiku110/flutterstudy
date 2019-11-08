import 'package:fluro/fluro.dart';
import 'package:flutterstudy/pages/home/home.dart';
import 'package:flutterstudy/pages/home/widget/widgetList.dart';
import 'package:flutterstudy/pages/test.dart';
class Routes{
    static Router router;
    static String home = '/';
    static String test = '/test';
    static String widgetList = '/widgetList';
    static void configureRoutes(Router router){
        //主页
        router.define(home, handler:  new Handler(handlerFunc:(context,params){
            return new Home(title: 'Widget',);
        } ));
        router.define(test, handler:  new Handler(handlerFunc:(context,params){
            return new Test(title: 'testTest',);
        } ));
        router.define(widgetList,handler: new Handler(
            handlerFunc: (context,params){
                var message = params['message']?.first;//取出传参
                return new WidgetList(passData: message);
            }
        ));
        Routes.router = router;
    }
}