import 'package:fluro/fluro.dart';
import 'package:flutterstudy/pages/home/home.dart';
import 'package:flutterstudy/pages/test.dart';
class Routes{
    static Router router;
    static void configureRoutes(Router router){
        //主页
        router.define('/', handler:  new Handler(handlerFunc:(context,params){
            return new Home(title: 'Widget',);
        } ));
        router.define('/test', handler:  new Handler(handlerFunc:(context,params){
            return new Test(title: 'testTest',);
        } ));
        Routes.router = router;
    }
}