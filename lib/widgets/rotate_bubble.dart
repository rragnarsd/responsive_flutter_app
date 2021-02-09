import 'dart:math';
import 'package:flutter/material.dart';

class RotateBubble extends StatelessWidget {
  final Widget child;
  final double degrees;

  const RotateBubble({Key key, this.degrees, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: degrees * (pi / 180),
      child: child,
    );
  }
}
