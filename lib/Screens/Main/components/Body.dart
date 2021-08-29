import 'package:first_app/Models/Users.dart';
import 'package:first_app/Screens/Main/components/Categories.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget
{
  const Body({
    Key? key,
    // required this.users,
  }) : super(key: key);
  // final Users users;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Column(
          children: <Widget>[
            Categories(),
        ]
      ),
    );
  }

}