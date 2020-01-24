import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class PersonalPage extends StatefulWidget {
  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  TextStyle _stylePersonal = TextStyle(
    color: Color(0xFFF9497D),
    fontSize: 32.0,
    fontFamily: 'IBM Plex Mono',
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Page'),
      ),
      body: ListView(
        children: <Widget>[
          _tittle(),
          Container(
            padding: EdgeInsets.only(left: 32, right: 32),
            child: Divider(
              thickness: 6,
              color: Color(0xFFF9497D),
            ),
          ),
          _checkTask(),
        ],
      ),
    );
  }

  Widget _tittle() {
    return Container(
      padding: EdgeInsets.only(left: 32.0, top: 28.0),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Personal',
              style: _stylePersonal,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '& home tasks',
              style: _stylePersonal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _checkTask() {
    return Container(
      width: 556.0,
      padding: EdgeInsets.only(left: 32.0, top: 18.0, right: 32.0),
      child: ListBody(
        children: <Widget>[
          Dash(
            direction: Axis.horizontal,
            length: 300,
            dashLength: 1,
          ),
          CheckboxListTile(
            value: false,
            activeColor: Colors.red,
            title: Text(
              'Meet Jane',
              style: TextStyle(fontFamily: 'Roboto Slab', fontSize: 16.0),
            ),
            onChanged: (value) {},
            controlAffinity: ListTileControlAffinity.leading,
          ),
          Dash(
            direction: Axis.horizontal,
            length: 300,
            dashLength: 1,
          ),
          CheckboxListTile(
            value: false,
            title: Text(
              'Meet Jane',
              style: TextStyle(fontFamily: 'Roboto Slab', fontSize: 16.0),
            ),
            subtitle: Text(
              '9:00 pm - 10:30 pm',
              style: TextStyle(fontFamily: 'Roboto Slab', fontSize: 12.0),
            ),
            onChanged: (value) {},
            controlAffinity: ListTileControlAffinity.leading,
          ),
          Dash(
            direction: Axis.horizontal,
            length: 300,
            dashLength: 1,
          ),
          CheckboxListTile(
            value: false,
            title: Text(
              'Get ready for the meeting',
              style: TextStyle(fontFamily: 'Roboto Slab', fontSize: 16.0),
            ),
            subtitle: Text(
              '9:00 pm - 10:30 pm',
              style: TextStyle(fontFamily: 'Roboto Slab', fontSize: 12.0),
            ),
            onChanged: (value) {},
            controlAffinity: ListTileControlAffinity.leading,
          ),
          checkSubtitle(),
          Dash(
            direction: Axis.horizontal,
            length: 300,
            dashLength: 1,
          ),
          CheckboxListTile(
            value: false,
            title: Text('Check inbox'),
            onChanged: (value) {},
            controlAffinity: ListTileControlAffinity.leading,
          ),
          checkSubtitle(),
        ],
      ),
    );
  }

  Widget checkSubtitle() {
    return Container(
      padding: EdgeInsets.only(left: 36.0),
      child: ListBody(
        children: <Widget>[
          CheckboxListTile(
            value: false,
            title: Text(
              'Print handouts',
              style: TextStyle(fontFamily: 'Roboto Slab', fontSize: 14.0),
            ),
            onChanged: (value) {},
            controlAffinity: ListTileControlAffinity.leading,
          ),
          CheckboxListTile(
            value: false,
            title: Text(
              'Finish my speech',
              style: TextStyle(fontFamily: 'Roboto Slab', fontSize: 14.0),
            ),
            onChanged: (value) {},
            controlAffinity: ListTileControlAffinity.leading,
          ),
          CheckboxListTile(
            value: false,
            title: Text(
              'Iron the suit',
              style: TextStyle(fontFamily: 'Roboto Slab', fontSize: 14.0),
            ),
            onChanged: (value) {},
            controlAffinity: ListTileControlAffinity.leading,
          ),
        ],
      ),
    );
  }

}
