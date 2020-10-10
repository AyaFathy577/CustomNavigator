import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Account Page'),
        ),
        body: Center(
          child: Text('Account Page'),
        ),
      ),
    );
  }
}
