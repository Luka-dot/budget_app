import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleControler = TextEditingController();
  final amountControler = TextEditingController();

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
              onChanged: (value) => titleControler,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              onChanged: (value) => amountControler,
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.purple,
              ),
              onPressed: () {
                print(titleControler.text);
                print(amountControler.text);
              },
              child: Text('Add Transaction'),
            ),
          ],
        ),
      ),
    );
  }
}
