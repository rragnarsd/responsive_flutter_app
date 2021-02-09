import 'package:flutter/material.dart';

class Bubble extends StatelessWidget {
  final double radius;
  final String assetImage;
  final List<Function> transforms;

  const Bubble(
      {Key key,
      @required this.radius,
      @required this.assetImage,
      this.transforms})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bubble = CircleAvatar(
      radius: radius,
      backgroundColor: Colors.transparent,
      child: Material(
        child: InkWell(
          //onTap: () => Navigator.pushNamed(context, '/about_me'),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: radius * 0.99,
            backgroundImage: AssetImage(assetImage),
          ),
        ),
      ),
    );
    if (this.transforms != null) {
      for (Function transform in this.transforms) {
        bubble = transform(bubble);
      }
    }
    return bubble;
  }
}
