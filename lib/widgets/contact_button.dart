import 'package:flutter/material.dart';
import '../constants.dart';

class ContactButton extends StatelessWidget {
  final String buttonText;
  final String button;

  const ContactButton({Key key, this.buttonText, this.button}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: RaisedButton(
        color: Colors.indigo,
        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
        onPressed: () {
          Navigator.pushNamed(context, '/contact_form');
        },
        child: Text(
          buttonText,
          style: kButtonTextStyle,
        ),
      ),
    );
  }
}