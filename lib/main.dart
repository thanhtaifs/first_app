import 'package:first_app/Screens/Welcome/WelcomePage.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter First App',
      theme: ThemeData(
        primarySwatch: primaryColor,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
        ),

      ),
      home: WelcomePage(
          title: 'Welcome Page',
      ),
    );
  }
}



