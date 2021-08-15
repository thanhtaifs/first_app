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
      child: TextField(
        onChanged: onChanged,
        cursorColor: primaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: primaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
  
}