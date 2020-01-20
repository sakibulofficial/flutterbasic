import 'package:flutter/material.dart';
import './main.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;

  String get getText {
    String resultText;
    if (score <= 10) {
      resultText = 'you are a very good person!';
    } else if (score <= 16) {
      resultText = 'you are a good!';
    } else {
      resultText = 'you are a bad!';
    }

    return resultText;
  }

  Result(this.score, this.reset);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              getText,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            FlatButton(
              child: Text(
                'Restart Quiz',
                style: TextStyle(color: Colors.green),
              ),
              onPressed: reset,
            )
          ],
        ),
      ),
    );
  }
}
