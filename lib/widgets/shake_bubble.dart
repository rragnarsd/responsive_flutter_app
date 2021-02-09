import 'package:flutter/material.dart';

class ShakeBubble extends StatefulWidget {
  final Widget bubble;
  final int durSeconds;
  final double tweenBegin;
  final double tweenEnd;
  final int period;
  final int durController;


  const ShakeBubble({Key key, this.bubble, this.durSeconds, this.tweenBegin, this.tweenEnd, this.period, this.durController}) : super(key: key);
  @override
  _ShakeBubbleState createState() => _ShakeBubbleState();
}

class _ShakeBubbleState extends State<ShakeBubble>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Tween<double> _tween;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: this.widget.durSeconds));
    _tween = Tween(begin: this.widget.tweenBegin, end: this.widget.tweenEnd);
    _controller.repeat(reverse: true, period: Duration(milliseconds: this.widget.durController));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _tween.animate(
        CurvedAnimation(
            parent: _controller,
            curve: Curves.elasticOut
        ),
      ),
      child: this.widget.bubble,
    );
  }
}
