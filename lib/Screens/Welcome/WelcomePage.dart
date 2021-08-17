import 'package:first_app/AppBarWithLogo.dart';
import 'package:first_app/Screens/Welcome/components/Body.dart';
import 'package:first_app/SizeConfig.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // appBar: buildAppBar(),
      body: Body(),
    );
  }
}
