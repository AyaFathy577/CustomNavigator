import 'package:flutter/material.dart';
import 'package:flutter_app/first_example/home_page.dart';
import 'package:flutter_app/second_example/home_tabs_page.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeTabsPage(),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
