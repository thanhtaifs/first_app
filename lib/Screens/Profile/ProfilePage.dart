import 'package:first_app/components/BottomNavBar.dart';
import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:first_app/Screens/Profile/components/Body.dart';
import '../../SizeConfig.dart';

class ProfilePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: primaryColor,
      leading: SizedBox(),
      // On Android it's false by default
      centerTitle: true,
      title: Text("Profile"),
      actions: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text(
            "Edit",
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.defaultSize! * 1.6, //16
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}