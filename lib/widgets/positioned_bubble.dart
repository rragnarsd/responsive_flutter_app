import 'package:flutter/material.dart';
import 'bubble.dart';

class PositionedBubble extends StatelessWidget {
  final Bubble bubble;
  final double x;
  final double y;

  const PositionedBubble({Key key, this.bubble, this.x = 0, this.y = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    //print('Screen height is $height and width $width');

    return Positioned(
      child: bubble,
      top: y + height / 2 - bubble.radius,
      left: x + width / 2 - bubble.radius,
    );
  }
}
