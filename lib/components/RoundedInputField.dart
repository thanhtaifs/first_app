import 'package:first_app/components/TextFieldContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedInputField extends StatelessWidget
{
  final String hintText;
  final IconData icon;
  final ValueChanged<String>? onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        onChanged: onChanged,
        cursorColor: primaryColor,
        style: TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: BackgroundDefaultColor,
          ),
          hintText: hintText,
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