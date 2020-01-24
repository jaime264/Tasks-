import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Home Page'),
       ),
       body: _lista(context),
    );
  }

  Widget _lista(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('Task'),
          onTap: () => Navigator.pushNamed(context, 'Task'),
        ),
        Divider(),
        ListTile(
          title: Text('Personal'),
          onTap: () => Navigator.pushNamed(context, 'NoFound'),
        ),
        Divider(),
        ListTile(
          title: Text('Nes Task'),
          onTap: () => Navigator.pushNamed(context, 'NoFound'),
        )
      ],
    );
  }
}