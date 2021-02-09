import 'package:flutter/material.dart';
import '../widgets/contact_button.dart';
import '../widgets/about_image.dart';
import '../widgets/about_positioned.dart';
import '../widgets/about_text.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              AboutImage(),
              AboutPositioned(name: 'Regina, 33', country: 'Iceland'),
            ],
          ),
          AboutText(
              aboutHeader: 'About Me',
              aboutMe:
                  'Hi! I\'m Regina. I like frontend development and app design! I love traveling and animals. I\'ve visited 43 countries and still more to come. '
                  'In the future when I\'ve had more experience as a developer, my dream is to work remotely while traveling the world!',
              letsConnect: 'Get in touch!'),
          ContactButton(buttonText: 'CONTACT REGINA'),
        ],
      ),
    );
  }
}
