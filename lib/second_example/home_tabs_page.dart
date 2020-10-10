import 'package:custom_navigator/custom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/second_example/accountPage.dart';
import 'package:flutter_app/second_example/home/homePage.dart';
import 'package:flutter_app/second_example/locationPage.dart';
import 'package:flutter_app/second_example/search/searchPage.dart';
import 'package:flutter_app/second_example/settingsPage.dart';

class HomeTabsPage extends StatefulWidget {
  @override
  _HomeTabsPageState createState() => _HomeTabsPageState();
}

class _HomeTabsPageState extends State<HomeTabsPage> {
  @override
  Widget build(BuildContext context) {
    var _items = [
      BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.blue,
          ),
          title: Text(
            'HomePage',
            style: TextStyle(
              color: Colors.blue,
            ),
          )),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.account_box,
            color: Colors.blue,
          ),
          title: Text('AccountPage',
              style: TextStyle(
                color: Colors.blue,
              ))),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.blue,
          ),
          title: Text('SearchPage',
              style: TextStyle(
                color: Colors.blue,
              ))),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.add_location,
            color: Colors.blue,
          ),
          title: Text('LocationPage',
              style: TextStyle(
                color: Colors.blue,
              ))),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
            color: Colors.blue,
          ),
          title: Text('SettingPage',
              style: TextStyle(
                color: Colors.blue,
              ))),
    ];
    return CustomScaffold(
      scaffold: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          items: _items,
        ),
      ),
      children: <Widget>[
        HomePage(),
        AccountPage(),
        SearchPage(),
        LocationPage(),
        SettingsPage(),
      ],
      onItemTap: (index) {},
    );
  }
}
