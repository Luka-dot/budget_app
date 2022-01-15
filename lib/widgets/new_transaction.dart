import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTransaction;
  final titleControler = TextEditingController();
  final amountControler = TextEditingController();

  NewTransaction(this.addNewTransaction);

  void submitData() {
    final enteredTitle = titleControler.text;
    final enteredAmount = double.parse(amountControler.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    addNewTransaction(enteredTitle, enteredAmount);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleControler,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountControler,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.purple,
              ),
              onPressed: submitData,
              child: Text('Add Transaction'),
            ),
          ],
        ),
      ),
    );
  }
}
