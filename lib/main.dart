import 'package:flutter/material.dart';
import 'screens/about_me.dart';
import 'screens/welcome.dart';
import 'screens/contact_form.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lato',
      ),
        initialRoute: '/',
        routes: {
          '/': (context) => Welcome(),
          '/about_me': (context) => AboutMe(),
          '/contact_form': (context) => ContactForm(),
        },
      );
  }
}
