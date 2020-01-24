import 'package:flutter/material.dart';
import 'package:task/pages/home_page.dart';
import 'package:task/pages/noFound_page.dart';
import 'package:task/pages/task_page.dart';

Map<String, WidgetBuilder> getRoutes(){

  return <String,WidgetBuilder>{
    '/' :(BuildContext context) => HomePage(),
    'NoFound' : (BuildContext context) => NoFoundPage(),
    'Task' : (BuildContext context) => TaskPage(),
  };

}