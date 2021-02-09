import 'package:flutter/material.dart';

Widget popupDialog(BuildContext context) {
  return AlertDialog(
    title: Text('Your message has been sent'),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Text('I will be in touch shortly')],
    ),
    actions: [
      RaisedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text('Okay'),
        color: Colors.indigo,
      )
    ],
  );
}