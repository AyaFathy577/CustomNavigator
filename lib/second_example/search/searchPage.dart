import 'package:flutter/material.dart';
import 'package:flutter_app/second_example/search/listViewPage2nd.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Search Page'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Go to ListView'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ListViewPage2nd()));
            },
          ),
        ),
      ),
    );
  }
}
