

import 'package:first_app/components/TextFieldContainer.dart';
import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';

class TextFieldContainerError extends StatelessWidget
{
  final Widget child;
  const TextFieldContainerError({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: size.width * 0.8,
      height: size.height * 0.08,

      child: child,
    );
  }

}