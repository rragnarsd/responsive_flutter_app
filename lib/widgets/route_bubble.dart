import 'package:flutter/material.dart';

import 'bubble.dart';

class RouteBubble extends StatelessWidget {
  final Bubble bubble;
  final String route;

  const RouteBubble({Key key, this.bubble, this.route}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        child: this.bubble,
        onTap: () => Navigator.pushNamed(context, '/about_me'),
      ),
    );
  }
}
