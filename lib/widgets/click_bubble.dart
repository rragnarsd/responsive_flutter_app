import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class ClickBubble extends StatelessWidget {
  final Widget child;
  final String url;

  const ClickBubble({Key key, this.url, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: this.child,
      onTap: () {
        _launchURL(this.url);
      },
    );
  }
}

_launchURL(String url) async {
    await launch(url);
}
