import 'package:flutter/material.dart';
import 'package:quizz_app/answer.dart';
import 'package:quizz_app/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What is the name of your pet?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('This example is good')),
          body: Column(
            children: [
              Question(questions[questionIndex]),
              Answer(answerQuestion),
              Answer(answerQuestion),
              Answer(answerQuestion),
            ],
          )),
    );
  }
}
