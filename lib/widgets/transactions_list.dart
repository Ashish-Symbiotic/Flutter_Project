import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'New shoes', amount: 100, date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Weekly Groceries',
        amount: 69.66,
        date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransactions.map((tx) {
        return Card(
            child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 16, horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
              ),
              padding: EdgeInsets.all(10),
              child: Text(
                "\$ ${tx.amount}",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  tx.title.toString(),
                  style: TextStyle(fontSize: 18, color: Colors.green),
                ),
                Text(
                  DateFormat.yMMMEd().format(tx.date),
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ],
            )
          ],
        ));
      }).toList(),
    );
  }
}
