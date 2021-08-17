import 'package:first_app/Screens/FormData/components/Background.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Data1"),
              SizedBox(height: size.height * 0.03),
            ],
          ),
        ),
    );
  }

}