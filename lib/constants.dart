import 'package:flutter/material.dart';

//ContactButton
const kButtonTextStyle =
    TextStyle(color: Colors.white, letterSpacing: 1.5, fontSize: 16.0, fontWeight: FontWeight.w600);


//AboutPositioned
const kNameTextStyle =
    TextStyle(fontSize: 30, letterSpacing: 1.0, fontFamily: 'Arvo', fontWeight: FontWeight.w600, color: Colors.indigo);

const kCountryTextStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.w500, fontFamily: 'Arvo');


//AboutText

const kAboutHeader = TextStyle(fontSize: 24, fontWeight: FontWeight.w600, letterSpacing: 1.0, color: Colors.indigo);

const kAboutMe = TextStyle(fontSize: 16, letterSpacing: 1.0, height: 1.5);

const kConnectText = TextStyle(fontSize: 16, letterSpacing: 0.5);


//ContactForm
const kInputStyle = InputDecoration(
    labelText: '',
    labelStyle: TextStyle(color: Colors.black54),
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.indigo, width: 2),
    ),
);