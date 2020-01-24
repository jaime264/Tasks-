import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:task/util/diamontBorder.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Page'),
      ),
      body: ListView(
        children: <Widget>[
          _title(),
          _carrusel(),
          _checkTask(),
        ],
      ),
      bottomNavigationBar: _navigationBar(),
      floatingActionButton: _floatButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _title() {
    return Container(
      width: 411.0,
      height: 72.0,
      padding: EdgeInsets.only(left: 32.0, top: 28.0),
      child: Text('Tasks',
          style: TextStyle(fontFamily: 'IBM Plex Mono', fontSize: 32.0)),
    );
  }

  Widget _carrusel() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 32.0, top: 18.0),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: Image(
              image: AssetImage('assets/list-btn-add.png'),
            ),
          ),
          Container(
            child: Image(
              image: AssetImage('assets/list-cards-items.png'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _checkTask() {
    return Container(
      width: 556.0,
      padding: EdgeInsets.only(left: 32.0, top: 34.0, right: 32.0),
      child: ListBody(
        children: <Widget>[
          Text(
            'Tasks for today',
            style: TextStyle(fontFamily: 'IBM Plex Mono', fontSize: 20.0),
          ),
          CheckboxListTile(
            value: false,
            title: Text(
              'Meet Jane',
              style: TextStyle(fontFamily: 'Roboto Slab', fontSize: 16.0),
            ),
            onChanged: (value) {},
            controlAffinity: ListTileControlAffinity.leading,
          ),
          Dash(
            direction: Axis.horizontal,
            length: 330,
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
            length: 330,
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
            length: 330,
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

  Widget _navigationBar() {
    return BottomAppBar(
      //shape: const CircularNotchedRectangle(),
      child: Container(
        height: 50.0,
        child: Row(
          children: <Widget>[
            Container(
                //height: 56,
                //width: 137,

                padding: EdgeInsets.only(left: 70.0, top: 1.0),
                child: Column(
                  children: <Widget>[
                    FlatButton(
                      onPressed: (){},
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.dehaze),
                          Text('Tasks')
                        ],
                      ),
                      ),
                    //Text('Tasks'),
                  ],
                )),
            Container(
                //height: 56,
                padding: EdgeInsets.only(left: 100.0, top: 1.0),
                child: Column(
                  children: <Widget>[
                    FlatButton(
                      onPressed: (){},
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.dehaze),
                          Text('Sсhedule')
                        ],
                      ),
                      ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget _floatButton() {
    return FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
        shape: DiamondBorder());
  }
}
