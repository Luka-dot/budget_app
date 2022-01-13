import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  const TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: transactions.map((tx) {
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
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey),
                      ),
                    ],
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
