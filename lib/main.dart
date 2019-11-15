import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutterstudy/modal/CounterModal.dart';
import 'package:flutterstudy/route/route.dart';
import 'package:provider/provider.dart';


void main (){
  final router = new Router();
  final counter = CounterModal();
  final textSize = 48;
  Routes.configureRoutes(router);
  return runApp(
        MultiProvider(
          providers: [
            Provider.value(value: textSize),
            ChangeNotifierProvider.value(value: counter)
          ],
          child: (MaterialApp(onGenerateRoute: Routes.router.generator)),
        ));
}
//Provider<int>.value(value: textSize,
//child:ChangeNotifierProvider.value(
//value: counter,
//child:  (MaterialApp(onGenerateRoute: Routes.router.generator)),
//)
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(onGenerateRoute: Routes.router.generator);
  }
}
