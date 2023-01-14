import 'package:flutter/material.dart';
import 'package:quizz_app/quiz.dart';
import 'package:quizz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;

  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  void _resetQuiz(){
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': [
          {'text': 'Black', 'score': 8},
          {'text': 'White', 'score': 1},
          {'text': 'Blue', 'score': 3},
          {'text': 'Yellow', 'score': 2},
        ]
      },
      {
        'questionText': 'What is the name of your pet?',
        'answers': [
          {'text': 'Dog', 'score': 4},
          {'text': 'Cat', 'score': 1},
          {'text': 'Rabbit', 'score': 1},
          {'text': 'Monkey', 'score': 8},
        ]
      },
      {
        'questionText': 'Best country to live in your bucket list',
        'answers': [
          {'text': 'Germany', 'score': 4},
          {'text': 'Aus', 'score': 8},
          {'text': 'China', 'score': 10},
          {'text': 'Saudi', 'score': 5},
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('This example is good')),
          body: questionIndex < questions.length
              ? Quiz(
            questions: questions,
            answerQuestion: answerQuestion,
            questionIndex: questionIndex,
          )
              : Result(totalScore, _resetQuiz)),
    );
  }
}
