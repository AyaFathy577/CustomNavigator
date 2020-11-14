import 'package:flutter/material.dart';

class AppName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
          text: 'Ins',
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color(0xffe46b10),
          ),
          children: [
            const TextSpan(
              text: 'p',
              style: const TextStyle(color: Colors.grey, fontSize: 30),
            ),
            const TextSpan(
              text: 'ia',
              style: const TextStyle(color: Color(0xffe46b10), fontSize: 30),
            ),
          ]),
    );
  }
}