import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(this.answerText),
        color: Colors.blue,
        onPressed: selectHandler,
        //answerQuestions is a function , we have removed () because when if we add () in this we just
        //calling a function and returning a value to the onPressed but onPressed wants a function not a value;
      ),
    );
  }
}
