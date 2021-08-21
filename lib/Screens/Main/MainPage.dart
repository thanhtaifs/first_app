import 'package:first_app/Models/Users.dart';
import 'package:first_app/Screens/Main/components/Body.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key, required this.users,
  }) : super(key: key);
  final Users users;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(this.title),
      // ),
      body: Body(
        users: users,
      ),
    );
  }
}
