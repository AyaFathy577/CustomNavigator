import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final VoidCallback voidCallback;

  SubmitButton({this.voidCallback, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.grey, Colors.grey[700]])),
      child: ButtonTheme(
        minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: FlatButton(
          child: Text(
            text,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
          onPressed: voidCallback,
        ),
      ),
    );
  }
}
