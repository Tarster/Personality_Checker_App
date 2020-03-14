import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answerText;
  Answer(this.answerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.cyan,
        child: Text(
          answerText,
          style: TextStyle(color: Colors.white, fontSize: 18),
          textAlign: TextAlign.left,
        ),
        onPressed: answerHandler,
      ),
    );
  }
}
