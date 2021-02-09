import 'dart:math';
import 'package:flutter/material.dart';
import '../widgets/positioned_bubble.dart';
import 'bubble.dart';

class CloudBubbles extends StatelessWidget {
  Bubble mainBubble;
  List<Bubble> cloudBubbles;
  double buffer;
  double theta;

  CloudBubbles({Key key, this.mainBubble, this.cloudBubbles, this.buffer=0})
      : super(key: key) {
    theta = 2 * pi / cloudBubbles.length;
  }

  List<Widget> getClouds() {
    List<Widget> clouds = [
      PositionedBubble(
        bubble: mainBubble,
      )
    ];

    int counter = 0;
    for (Bubble cloud in cloudBubbles) {
      double radius = cloud.radius + this.buffer + this.mainBubble.radius;
      double x = cos(counter * theta) * radius;
      double y = sin(counter * theta) * radius;
      clouds.add(PositionedBubble(
        bubble: cloud,
        x: x,
        y: y,
      ));
      counter++;
    }
    return clouds;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: getClouds(),
    );
  }
}
