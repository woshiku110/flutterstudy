import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutterstudy/route/route.dart';
void main (){
  final router = new Router();
  Routes.configureRoutes(router);
  return runApp(MaterialApp(onGenerateRoute: Routes.router.generator));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(onGenerateRoute: Routes.router.generator);
  }
}
