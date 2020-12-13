import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_app/quiz.dart';

import './questions.dart';
import './answer.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionsText': 'What\'s your favourite Color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionsText': 'What\'s your favourite Animal?',
      'answers': [
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 5},
        {'text': 'Horse', 'score': 10},
        {'text': 'Zebra', 'score': 1}
      ]
    },
    {
      'questionsText': 'What\'s your instructor?',
      'answers': [
        {'text': 'Will Smith', 'score': 5},
        {'text': 'Romans', 'score': 1},
        {'text': 'Americans', 'score': 3},
        {'text': 'Europeans', 'score': 10}
      ]
    },
    {
      'questionsText': 'What\'s your Raagni Kalakar?',
      'answers': [
        {'text': 'Anil Dujaniya', 'score': 10},
        {'text': 'Ranbir', 'score': 5},
        {'text': 'Pale Ram', 'score': 3},
        {'text': 'Azad Singh Kahanda Khedi', 'score': 1}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestions(int score) {
    if (_questionIndex <= _questions.length)
      setState(() {
        // if (_questionIndex == 1)
        // _questionIndex = 0;
        //else {
        _questionIndex = _questionIndex + 1;

        _totalScore += score;
        //}
      });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestions,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore),
      ),
    );
  }
}
