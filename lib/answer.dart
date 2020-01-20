import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selecthandeler;
  final String answerText;

  Answer(this.selecthandeler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, left: 10, bottom: 10),
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        color: Colors.blue,
        onPressed: selecthandeler,
      ),
    );
  }
}
