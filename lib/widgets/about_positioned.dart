import 'package:flutter/material.dart';
import '../constants.dart';

class AboutPositioned extends StatelessWidget {
  final String name;
  final String country;

  const AboutPositioned({Key key, this.name, this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -45.0,
      left: 15.0,
      right: 15.0,
      child: Card(
        elevation: 8.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                name,
                style: kNameTextStyle,
              ),
              Text(
                country,
                style: kCountryTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}