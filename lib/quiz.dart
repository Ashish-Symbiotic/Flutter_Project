import 'package:flutter/material.dart';

import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestions;

  Quiz(
      {@required this.answerQuestions,
      @required this.questions,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]['questionsText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestions(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
