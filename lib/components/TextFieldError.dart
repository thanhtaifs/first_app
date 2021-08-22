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
    return TextFieldContainerError(
      child:Center(
        child:IntrinsicWidth(
          child: TextField(
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
            ),
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
              contentPadding: EdgeInsets.all(10.0),
            ) : null,
          ),
        ),
      ),


    );
  }
  
}