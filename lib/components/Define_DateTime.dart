import 'package:first_app/components/DateTimeContainer.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constants.dart';

class Define_DateTime extends StatelessWidget
{

  final Icon? icon;
  final TextEditingController? controller;
  final Function()? onTap;
  final String? hintText;
  const Define_DateTime({
    Key? key,
    this.icon,
    this.controller,
    this.onTap,
    required this.hintText
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DateTimeContainer(
      child: TextFormField(
        readOnly: true,
        controller: controller,
        style: TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          icon: icon,
          border: InputBorder.none,
          suffixIcon: Icon(
            Icons.play_arrow,
            color: BackgroundDefaultColor,
          ),
          hintText: hintText,
        ),
        onTap: onTap,
      ),
    );
  }

}