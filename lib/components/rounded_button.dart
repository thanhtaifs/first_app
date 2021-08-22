import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget
{
  final String text;
  final Function()? onPressed;
  final Color color,textColor,bgColor;
  const RoundedButton({
    key,
    required this.text,
    required this.onPressed,
    this.color = primaryColor,
    this.textColor = Colors.white,
    required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            primary: color,
            backgroundColor: bgColor,
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }


}