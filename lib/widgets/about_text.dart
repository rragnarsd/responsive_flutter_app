import 'package:flutter/material.dart';
import '../constants.dart';

class AboutText extends StatelessWidget {
  final String aboutHeader;
  final String aboutMe;
  final String letsConnect;

  const AboutText({Key key, this.aboutMe, this.letsConnect, this.aboutHeader}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    aboutHeader,
                    style: kAboutHeader,
                  ),
                ),
              ),
              Text(
                aboutMe,
                style: kAboutMe,
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  letsConnect,
                  style: kConnectText,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}