import 'package:first_app/Screens/Register/components/Body.dart';
import 'package:flutter/material.dart';

import '../../AppBarBackButton.dart';

class RegisterScreen extends StatelessWidget
{
  RegisterScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

}