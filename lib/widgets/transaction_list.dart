import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatefulWidget {
//  const TransactionList({Key? key}) : super(key: key);

  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: 't1',
      title: 'gas',
      amount: 44.33,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'groceries',
      amount: 140.00,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransaction.map((tx) {
        return Card(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 2.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '\$ ${tx.amount}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.purple),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tx.title,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 24,
                        fontFamily: 'roboto'),
                  ),
                  Text(
                    DateFormat.yMMMd().format(tx.date),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blueGrey),
                  ),
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
