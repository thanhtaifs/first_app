import 'package:first_app/Models/Users.dart';
import 'package:first_app/Screens/Login/components/Background.dart';
import 'package:first_app/Screens/Main/MainPage.dart';
import 'package:first_app/components/RoundedInputField.dart';
import 'package:first_app/components/RoundedPasswordField.dart';
import 'package:first_app/components/TextFieldContainer.dart';
import 'package:first_app/components/TextFieldContainerError.dart';
import 'package:first_app/components/TextFieldError.dart';
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
  bool showProgress = false;
  bool hideError = true;
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
  bool InitObject()
  {
    users.userName = _usernameController.text;
    users.passWord = _passController.text;
    if(users.userName == "1") {
        return false;
    }
    else {
      return true;
    }
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
              SizedBox(height: size.height * 0.02),
              SvgPicture.asset(
                "assets/icons/LogoBrand.svg",
                height: size.height * 0.40,
              ),
              SizedBox(height: size.height * 0.02),
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
              TextFieldError(
               error: hideError,
               textError: "Sai tên đăng nhập hoặc mật khẩu",
              ),
              RoundedButton(
                text: "LOGIN",
                bgColor: isButtonEnabled? BackgroundDefaultColor : Colors.grey,
                onPressed: isButtonEnabled? () async {
                  setState(() {
                    showProgress = true;
                  });
                  if(_formKey.currentState!.validate()){
                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   const SnackBar(content: Text('Processing Data')),
                    // );
                    hideError = InitObject();
                    // hideError có lỗi nếu là false
                    if(hideError)
                    {
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
                      setState(() {
                        showProgress = false;
                      });
                    }
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