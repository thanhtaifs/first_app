import 'dart:async';

import 'package:first_app/Models/Users.dart';
import 'package:first_app/Screens/ContainerPage/ContainerPage.dart';
import 'package:first_app/Screens/Login/components/Background.dart';
import 'package:first_app/Screens/Main/MainPage.dart';
import 'package:first_app/components/RoundedInputField.dart';
import 'package:first_app/components/RoundedPasswordField.dart';
import 'package:first_app/components/TextFieldError.dart';
import 'package:first_app/components/rounded_button.dart';
import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class Body extends StatefulWidget
{
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  BodyForm createState() {
    return BodyForm();
  }
  void configLoading() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle
      ..loadingStyle = EasyLoadingStyle.dark
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = Colors.yellow
      ..backgroundColor = Colors.green
      ..indicatorColor = Colors.yellow
      ..textColor = Colors.yellow
      ..maskColor = Colors.blue.withOpacity(0.5)
      ..userInteractions = true
      ..dismissOnTap = false
      ..customAnimation;
  }
}
class BodyForm extends State<StatefulWidget>
{
  final _formKey = GlobalKey<FormState>();
  Timer? _timer;
  late double _progress;
  bool _passwordVisible = false;
  var isButtonEnabled = false;
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
              SizedBox(height: size.height * 0.01),
              SvgPicture.asset(
                "assets/icons/LogoBrand.svg",
                height: size.height * 0.40,
              ),
              SizedBox(height: size.height * 0.01),
              RoundedInputField(
                hintText: "Tên đăng nhập",
                controller: _usernameController,
                onChanged: (value) {
                  isEmpty();
                },
              ),
              SizedBox(height: size.height * 0.01),
              RoundedPasswordField(
                hintText: "Mật khâủ",
                obscureText: !_passwordVisible,//This will obscure text dynamically
                controller: _passController,
                inputDecoration: InputDecoration(
                  hintText: 'Nhập mật khẩu',
                  icon: Icon(
                      Icons.lock,
                      color: BackgroundDefaultColor,
                    ),
                    suffixIcon: IconButton(
                      icon : Icon(
                        _passwordVisible ? Icons.visibility : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      color: BackgroundDefaultColor,
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                    border: InputBorder.none,
                  ),
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
                  if(_formKey.currentState!.validate()){
                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   const SnackBar(content: Text('Processing Data')),
                    // );
                    setState(() {
                      hideError = InitObject();
                    });

                    // hideError có lỗi nếu là false
                    if(hideError)
                    {
                      _timer?.cancel();
                      await EasyLoading.show(
                        status: 'Loading ...',
                        maskType: EasyLoadingMaskType.black,
                      );
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context)
                              {
                                return ContainerPage(
                                  // users: users,
                                );
                              })
                          // PageRouteBuilder(
                          //   pageBuilder: (context, animation1, animation2) => MainPage(
                          //     users: users,
                          //   ),
                          //   transitionDuration: Duration(seconds: 0),
                          //
                          // ),
                      );
                      await EasyLoading.dismiss();
                    }
                  }
                } : null,
              ),
              SizedBox(height: size.height * 0.02),

            ],
          ),
        ),
      ),
    );
  }

}