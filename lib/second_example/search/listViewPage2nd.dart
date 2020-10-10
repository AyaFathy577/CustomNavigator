import 'package:flutter/material.dart';

class ListViewPage2nd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Infinite List"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
              leading: Text("$index"), title: Text("Number $index"));
        },
      ),
    );
  }
}
