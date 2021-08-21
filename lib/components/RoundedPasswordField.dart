import 'package:first_app/components/TextFieldContainer.dart';
import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField  extends StatelessWidget
{
  final String hintText;
  final ValueChanged<String>? onChanged;
  const RoundedPasswordField({
    Key? key,
    this.onChanged,
    required this.hintText,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: primaryColor,
        style: TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            Icons.lock,
            color: BackgroundDefaultColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: BackgroundDefaultColor,
          ),
          border: InputBorder.none,
        ),
        validator: (value){
          if (value == null || value.isEmpty) {
            return 'Vui lòng nhập dữ liệu';
          }
          return null;
        },
      ),
    );
  }

}