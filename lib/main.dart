import 'package:flutter/material.dart';
import 'package:task/pages/noFound_page.dart';
import 'package:task/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task',
      initialRoute: '/',
      routes: getRoutes(),
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
          builder: (BuildContext context) => NoFoundPage(),
        );
      },
    );
  }
}

