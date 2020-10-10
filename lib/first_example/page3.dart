import 'package:flutter/material.dart';
import 'file:///C:/Users/ayafa/AndroidStudioProjects/flutter_app/lib/first_example/listview_page.dart';

import 'page2.dart';

class Page3 extends StatelessWidget {
  const Page3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        appBar: AppBar(
            title: Text("Page 3"),
            actions:<Widget>[
              IconButton(icon: Icon(Icons.ac_unit), onPressed: (){
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                        new Page2()));

              })
            ]
        ),
        body: Align(
            alignment: Alignment.center,
            child: FlatButton(color: Colors.blue, textColor: Colors.white, onPressed: (){
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new ListViewPage()));
            }, child: Text("Switch Page - Comment")))
    ));
  }
}