import 'package:flutter/material.dart';

class AboutImage extends StatelessWidget {
  final String image;

  const AboutImage({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Hero(
          tag: 'profile',
          child: Image(
            width: width * 1,
            image: AssetImage('assets/peru.jpg'),
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}