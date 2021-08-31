import 'package:first_app/components/TextFieldContainer.dart';
import 'package:first_app/components/TextFieldContainerError.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class TextFieldError extends StatelessWidget
{
  final String textError;
  final bool error;
  final IconData? icon;

  const TextFieldError({
    Key? key,
    required this.error,
    required this.textError,
    this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextFieldContainerError(
      child:Center(
        child:IntrinsicWidth(
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: !error ? InputDecoration(
              prefixIcon: Icon(
                  Icons.error,
                  color: Colors.redAccent,
              ),
              border: InputBorder.none,
              hintStyle: TextStyle(
                  fontSize: 14.0,
                  color: Colors.redAccent),
              hintText: textError,
              isCollapsed: true,
            ) : null,
          ),
        ),
      ),


    );
  }
  
}