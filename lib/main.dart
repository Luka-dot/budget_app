import 'package:flutter/material.dart';

import './widgets/transaction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  String titleInput;
  String amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Card(
              color: Colors.blue,
              child: Container(
                child: Text('CHART placeholder'),
                width: double.infinity, // double.infinity
              ),
              elevation: 5.0,
            ),
          ),
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                    onChanged: (value) {
                      titleInput = value;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    onChanged: (value) {
                      amountInput = value;
                    },
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.purple,
                    ),
                    onPressed: () {
                      print(titleInput);
                      print(amountInput);
                    },
                    child: Text('Add Transaction'),
                  ),
                ],
              ),
            ),
          ),
          TransactionList(),
        ],
      ),
    );
  }
}
