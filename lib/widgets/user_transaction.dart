import 'package:flutter/material.dart';

import '../widgets/transaction_list.dart';
import '../widgets/new_transaction.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  static int _index = 4;
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'McDonalds',
      amount: 25.75,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Car payment',
      amount: 50.05,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTemp = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: 't$_index',
    );
    _index++;
    setState(() {
      _userTransactions.add(newTemp);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
