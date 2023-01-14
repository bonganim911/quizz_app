import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function resetQuizhandler;

  Result(this.finalScore, this.resetQuizhandler);

  String get textPhrase {
    String textResults;
    if (finalScore <= 8) {
      textResults = 'You are awesome and innocent!';
    } else if (finalScore <= 12) {
      textResults = 'You are ok but little bit strange!!';
    } else {
      textResults = 'You are a bad bad person!';
    }

    return textResults;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          textPhrase,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(onPressed: resetQuizhandler, child: Text('Reset Quiz', textAlign: TextAlign.center, style: TextStyle(fontSize: 15),))
      ],
    ));
  }
}
