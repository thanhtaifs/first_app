import 'package:first_app/components/TextFieldContainer.dart';
import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField  extends StatelessWidget
{
  final ValueChanged<String>? onChanged;
  const RoundedPasswordField({
    Key? key,
    this.onChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: primaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: primaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: primaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

}