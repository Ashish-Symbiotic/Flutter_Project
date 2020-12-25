import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addAmount;

  NewTransaction(this.addAmount);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              autocorrect: true,
              decoration: InputDecoration(labelText: 'Title'),
              /*onChanged: (value) {
                        titleInput = value;
                      },*/
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Price'),
              /* onChanged: (value) {
                        amountInput = value;
                      },*/
              controller: amountController,
            ),
            FlatButton(
              onPressed: () {
                addAmount(
                    titleController.text, double.parse(amountController.text));
              },
              child: Text("Add Transaction"),
              textColor: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
