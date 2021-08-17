import 'package:first_app/Screens/FormData/components/Background.dart';
import 'package:first_app/Screens/FormData/components/Body.dart';
import 'package:flutter/material.dart';

class FormData extends StatelessWidget
{
  FormData({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Body(),
    );
  }

}