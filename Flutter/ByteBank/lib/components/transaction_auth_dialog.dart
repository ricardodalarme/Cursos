import 'package:flutter/material.dart';

class TransactionAuthDialog extends StatelessWidget {
  const TransactionAuthDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Authenticate'),
      content: TextField(
        obscureText: true,
        maxLength: 4,
        style: TextStyle(fontSize: 64, letterSpacing: 32),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
      ),
      actions: [
        FlatButton(onPressed: () {}, child: Text('Cancel')),
        FlatButton(onPressed: () {}, child: Text('Confirm')),
      ],
    );
  }
}
