import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTransaction;
  final titleControler = TextEditingController();
  final amountControler = TextEditingController();

  NewTransaction(this.addNewTransaction);

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
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountControler,
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.purple,
              ),
              onPressed: () {
                addNewTransaction(
                  titleControler.text,
                  double.parse(amountControler.text),
                );
              },
              child: Text('Add Transaction'),
            ),
          ],
        ),
      ),
    );
  }
}
