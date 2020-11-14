import 'package:flutter/material.dart';

class CreateAccountLabel extends StatelessWidget {
  final String text1;
  final String text2;
  final VoidCallback voidCallback;

  CreateAccountLabel({this.voidCallback, this.text1, this.text2});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => voidCallback(),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        padding: const EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Wrap(
          children: <Widget>[
            Text(
              text1,
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text2,
              style: const TextStyle(
                  color: Color(0xfff79c4f),
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
