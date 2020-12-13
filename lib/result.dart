import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);
  String get resultPhrase {
    String resultText = "You did it !!";
    if (resultScore <= 8) {
      resultText = "You are Awesome and Inncocent";
    } else if (resultScore <= 12) {
      resultText = "Pretty Likable!";
    } else if (resultScore <= 16) {
      resultText = "You are ... Strange";
    } else {
      resultText = "You are so bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
    );
  }
}
