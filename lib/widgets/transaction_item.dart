import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    Key key,
    @required Transaction transaction,
    @required Function deleteTransactionCall,
  })  : _transaction = transaction,
        _deleteTransactionCall = deleteTransactionCall,
        super(key: key);

  final Transaction _transaction;
  final Function _deleteTransactionCall;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.blue,
      elevation: 3,
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Container(
              height: 20,
              child: FittedBox(
                child: Text('\$${_transaction.amount.toStringAsFixed(2)}'),
              ),
            ),
          ),
        ),
        title: Text(
          _transaction.title,
          style: Theme.of(context).textTheme.title,
        ),
        subtitle: Text(
          DateFormat.yMMMMd('en_US').format(_transaction.date),
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
        trailing: MediaQuery.of(context).size.width > 460
            ? FlatButton.icon(
                icon: const Icon(Icons.delete),
                label: const Text('Delete'),
                textColor: Theme.of(context).errorColor,
                onPressed: () => _deleteTransactionCall(_transaction.id),
              )
            : IconButton(
                icon: const Icon(Icons.delete),
                color: Theme.of(context).errorColor,
                onPressed: () => _deleteTransactionCall(_transaction.id),
              ),
      ),
    );
  }
}
