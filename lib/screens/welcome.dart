import 'dart:math';
import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/route_bubble.dart';
import '../widgets/bubble.dart';
import '../widgets/click_bubble.dart';
import '../widgets/cloud_bubbles.dart';
import '../widgets/rotate_bubble.dart';
import '../widgets/shake_bubble.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double controlSize = min(width, height);

    Widget mainBubble = Bubble(
      /*radius: 100,*/
      radius: controlSize * 0.2,
      assetImage: 'assets/peru.jpg',
      transforms: [
        (child) => ShakeBubble(
            bubble: child,
            durSeconds: 1300,
            tweenBegin: 0.85,
            tweenEnd: 0.95,
            period: 1000,
            durController: 1200),
        /*(child) => RouteBubble(route: '/about_me'),*/
      ],
    );

    Widget gitBubble = Bubble(
      /*radius: 25,*/
      radius: controlSize * 0.05,
      assetImage: 'assets/github.png',
      transforms: [
        (child) => ShakeBubble(
            bubble: child,
            durSeconds: 220,
            tweenBegin: 0.65,
            tweenEnd: 0.95,
            period: 420,
            durController: 800),
        (child) => RotateBubble(child: child, degrees: 5),
        (child) => ClickBubble(
              child: child,
              url: 'https://github.com/rragnarsd',
            )
      ],
    );

    Widget linkedBubble = Bubble(
      /*radius: 25,*/
      radius: controlSize * 0.05,
      assetImage: 'assets/linkedin.png',
      transforms: [
        (child) => ShakeBubble(
            bubble: child,
            durSeconds: 11,
            tweenBegin: 0.75,
            tweenEnd: 0.85,
            period: 520,
            durController: 500),
        (child) => RotateBubble(child: child, degrees: -5),
        (child) => ClickBubble(
              child: child,
              url: 'http://www.linkedin.com',
            )
      ],
    );

    Widget instaBubble = Bubble(
      /*radius: 25,*/
      radius: controlSize * 0.05,
      assetImage: 'assets/instagram.png',
      transforms: [
        (child) => ShakeBubble(
            bubble: child,
            durSeconds: 850,
            tweenBegin: 0.95,
            tweenEnd: 1.0,
            period: 520,
            durController: 850),
        (child) => RotateBubble(child: child, degrees: -5),
        (child) => ClickBubble(
              child: child,
              url: 'http://www.instagram.com',
            )
      ],
    );

    Widget fbBubble = Bubble(
      /*radius: 25,*/
      radius: controlSize * 0.05,
      assetImage: 'assets/facebook.png',
      transforms: [
        (child) => ShakeBubble(
            bubble: child,
            durSeconds: 740,
            tweenBegin: 0.85,
            tweenEnd: 0.95,
            period: 400,
            durController: 600),
        (child) => RotateBubble(child: child, degrees: 0),
        (child) => ClickBubble(
              child: child,
              url: 'https://www.facebook.com/ReginaR87/',
            )
      ],
    );
    return Scaffold(
      body: CloudBubbles(
        mainBubble: mainBubble,
        cloudBubbles: [
          fbBubble,
          gitBubble,
          linkedBubble,
          instaBubble,
          fbBubble,
          gitBubble,
          linkedBubble,
          instaBubble,
        ],
        buffer: 20,
      ),
    );
  }
}
