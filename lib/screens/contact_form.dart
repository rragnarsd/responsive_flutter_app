import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../constants.dart';
import '../widgets/popup_dialog.dart';

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _firestore = FirebaseFirestore.instance;
  String message;
  String name;
  String email;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Contact Me',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.indigo),
              ),
            ),
            TextField(
              onChanged: (value) {
                name = value;
              },
              decoration: kInputStyle.copyWith(
                labelText: 'Enter your name',
              )
            ),
            TextField(
              onChanged: (value) {
                email = value;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: kInputStyle.copyWith(
                labelText: 'Enter your email',
              )
            ),
            TextField(
              onChanged: (value) {
                message = value;
              },
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: kInputStyle.copyWith(
                labelText: 'Enter your message'
              )
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: RaisedButton(
                child: Text(
                  'Submit',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.5),
                ),
                color: Colors.indigo,
                onPressed: () {
                  _firestore
                      .collection('messages')
                      .add({'name': name, 'email': email, 'message': message});
                  Navigator.of(context).pop();
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => popupDialog(context));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}