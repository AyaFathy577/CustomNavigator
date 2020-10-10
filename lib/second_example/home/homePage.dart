import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/ayafa/AndroidStudioProjects/flutter_app/lib/second_example/home/vipPage.dart';
import 'file:///C:/Users/ayafa/AndroidStudioProjects/flutter_app/lib/second_example/home/voicePage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Home Page'),),
        body: Center(
          child: Column(
            children: <Widget>[
              FlatButton(
                child: Text('Go to voice page'),
                color: Colors.green,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => VoicePage()));
                },
              ),
              FlatButton(
                child: Text('Go to vip page'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => VIPPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
