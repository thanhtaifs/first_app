import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:first_app/Screens/Welcome/WelcomePage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter First App',
      theme: ThemeData(
        primarySwatch: primaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomePage(title: 'Flutter Demo Home Page'),
    );
  }
}



