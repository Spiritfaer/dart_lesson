import 'package:flutter/material.dart';

import './widgets/user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My app'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Card(
                  shadowColor: Colors.blue,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text('First card'),
                    margin: EdgeInsets.all(5),
                  ),
                  elevation: 5,
                ),
              ),
              UserTransaction(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
