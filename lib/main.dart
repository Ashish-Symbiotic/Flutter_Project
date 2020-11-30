import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestions() {
    print('Answer Choosen');
  }

  Widget build(BuildContext context) {
    var questions = [
      'Whats your name?',
      'Whats\'s your pet name?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: <Widget>[
              Text('The Questions'),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestions,
                //answerQuestions is a function , we have removed () because when if we add () in this we just
                //calling a function and returning a value to the onPressed but onPressed wants a function not a value;
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print('Ans 2 choosen'),
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('Ans 3 choosen');
                },
              ),
            ],
          )),
    );
  }
}
