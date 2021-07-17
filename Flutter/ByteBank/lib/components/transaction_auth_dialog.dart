import 'package:flutter/material.dart';

class TransactionAuthDialog extends StatefulWidget {
  final Function(String password) onConfirm;
  const TransactionAuthDialog({Key? key, required this.onConfirm})
      : super(key: key);

  @override
  _TransactionAuthDialogState createState() => _TransactionAuthDialogState();
}

class _TransactionAuthDialogState extends State<TransactionAuthDialog> {
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Authenticate'),
      content: TextField(
        obscureText: true,
        maxLength: 4,
        style: TextStyle(fontSize: 64, letterSpacing: 24),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
      ),
      actions: [
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancel'),
        ),
        FlatButton(
          onPressed: () {
            widget.onConfirm(_passwordController.text);
            Navigator.pop(context);
          },
          child: Text('Confirm'),
        ),
      ],
    );
  }
}
