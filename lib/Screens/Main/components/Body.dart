
import 'package:first_app/Models/Users.dart';
import 'package:first_app/Screens/Main/components/Background.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget
{
  const Body({
    Key? key, required this.users,
  }) : super(key: key);
  final Users users;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(users.userName + ":" + users.passWord),
              SizedBox(height: size.height * 0.03),
            ],
          ),
        ),
    );
  }

}