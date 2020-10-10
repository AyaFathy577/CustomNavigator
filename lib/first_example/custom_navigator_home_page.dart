import 'package:custom_navigator/custom_navigator.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/ayafa/AndroidStudioProjects/flutter_app/lib/first_example/page1.dart';
import 'file:///C:/Users/ayafa/AndroidStudioProjects/flutter_app/lib/first_example/page2.dart';
import 'file:///C:/Users/ayafa/AndroidStudioProjects/flutter_app/lib/first_example/page3.dart';

class CustomNavigatorHomePage extends StatefulWidget {
  CustomNavigatorHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CustomNavigatorHomePageState createState() => _CustomNavigatorHomePageState();
}

class _CustomNavigatorHomePageState extends State<CustomNavigatorHomePage> {
  final List<Widget> _children = [
    Page1(),
    Page2(),
    Page3(),
  ];
  Widget _page = Page1();
  int _currentIndex = 0;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        onTap: (index) {
          navigatorKey.currentState.maybePop();
          setState(() => _page = _children[index]);
          _currentIndex = index;
        },
        currentIndex: _currentIndex,
      ),
      body: CustomNavigator(
        navigatorKey: navigatorKey,
        home: _page,
        pageRoute: PageRoutes.materialPageRoute,
      ),
    );
  }
  final _items = [
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
  ];
}