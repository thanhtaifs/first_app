import 'package:first_app/Models/Users.dart';
import 'package:first_app/Screens/Login/components/Background.dart';
import 'package:first_app/Screens/Main/MainPage.dart';
import 'package:first_app/components/RoundedInputField.dart';
import 'package:first_app/components/RoundedPasswordField.dart';
import 'package:first_app/components/rounded_button.dart';
import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget
{
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  BodyForm createState() {
    return BodyForm();
  }

}
class BodyForm extends State<StatefulWidget>
{
  final _formKey = GlobalKey<FormState>();
  var isButtonEnabled = false;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  Users users = Users("", "");
  bool isEmpty()
  {
    setState(() {
      if(_usernameController.text.trim() != "" && _passController.text.trim() != "")
      {
        isButtonEnabled=true;
      }
      else{
        isButtonEnabled=false;
      }
    });
    return isButtonEnabled;
  }
  void InitObject()
  {
    users.userName = _usernameController.text;
    users.passWord = _passController.text;
  }
  @override
  void initState() {
    super.initState();
    isEmpty();
    _usernameController.addListener(() {
      setState(()
      {

      });

    });
    _usernameController.addListener(()
    {
      setState(()
      {

      });
    });
  }

  @override
  void dispose() {
    _usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Đăng nhập hệ thống",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: BackgroundDefaultColor,
                    fontSize: 22,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/LogoBrand.svg",
                height: size.height * 0.35,
              ),
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: "Tên đăng nhập",
                controller: _usernameController,
                onChanged: (value) {
                  isEmpty();
                },
              ),
              RoundedPasswordField(
                hintText: "Mật khâủ",
                controller: _passController,
                onChanged: (value) {
                  isEmpty();
                },
              ),
              RoundedButton(
                text: "LOGIN",
                bgColor: isButtonEnabled? BackgroundDefaultColor : Colors.grey,
                onPressed: isButtonEnabled? () {
                  if(_formKey.currentState!.validate()){
                    InitObject();
                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   const SnackBar(content: Text('Processing Data')),
                    // );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context)
                            {
                                return MainPage(
                                  users: users,
                                );
                            })
                    );
                  }
                } : null,
              ),
              SizedBox(height: size.height * 0.03),
            ],
          ),
        ),
      ),
    );
  }

}