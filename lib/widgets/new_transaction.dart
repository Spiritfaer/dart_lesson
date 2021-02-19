import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  final Function _saveTransaction;

  NewTransaction(this._saveTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              controller: _titleController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              controller: _amountController,
            ),
            FlatButton(
              child: Text('Add Transaction'),
              onPressed: () => _saveTransaction(
                _titleController.text,
                double.parse(_amountController.text),
              ),
              textColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
