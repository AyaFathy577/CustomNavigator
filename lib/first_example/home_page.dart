import 'package:custom_navigator/custom_navigation.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/ayafa/AndroidStudioProjects/flutter_app/lib/first_example/page1.dart';
import 'file:///C:/Users/ayafa/AndroidStudioProjects/flutter_app/lib/first_example/page3.dart';

import 'page2.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      scaffold: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.looks_one),
              title: new Text('Page1'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.looks_two),
              title: new Text('Page2'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.looks_3),
              title: new Text('Page3'),
            ),
          ],
        ),
      ),
      children: <Widget>[
        Page1(),
        Page2(),
        Page3(),
      ],
      onItemTap: (index) {},
    );
  }
}
