import 'package:flutter/material.dart';
import 'dart:io';

class BackButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Platform.isIOS
            ? const Icon(Icons.arrow_back_ios, color: Colors.black)
            : const Icon(Icons.arrow_back, color: Colors.black),
      ),
    );
  }
}