import 'package:flutter/material.dart';
import './widgets/user_transaction.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Personal Expense"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              width: double.infinity,
              child: Card(
                child: Container(
                  color: Colors.blueAccent,
                  width: double.infinity, //as much space as you can.
                  child: Text("Chart"),
                ),
                elevation: 5,
              ),
            ),
            UserTransaction(),
          ],
        ),
      ),
    );
  }
}
