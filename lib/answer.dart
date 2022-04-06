// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  VoidCallback textHandler;
  String answerText;
  Answer(this.textHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: textHandler,
        child: Text(answerText),
        color: Colors.blueAccent,
      ),
    );
  }
}
