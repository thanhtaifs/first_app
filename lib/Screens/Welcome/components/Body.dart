import 'package:first_app/Screens/Login/login_screen.dart';
import 'package:first_app/Screens/Welcome/components/Background.dart';
import 'package:first_app/components/rounded_button.dart';
import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            Text("WELCOME TO EDU",
            style: TextStyle(fontWeight: FontWeight.bold)
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              textColor: primaryColor,
              bgColor: Colors.purple,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage(
                        title: 'Login Page',
                      );
                    },
                  ),
                );
              },
            ),
            RoundedButton(
                text: "SIGN UP",
                color: primaryColor,
                bgColor: Colors.purple,
                textColor: primaryColor,
                onPressed: (){
                  Navigator.push(
                    context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage(
                            title: 'SignUp',
                          );
                        },
                      ),
                  );
                },
            ),
          ],
        ),
      ),
    );
  }

}