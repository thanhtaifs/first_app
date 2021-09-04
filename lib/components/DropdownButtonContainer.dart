import 'package:flutter/material.dart';

import '../constants.dart';

class DropdownButtonContainer extends StatelessWidget
{
  final Widget child;
  const DropdownButtonContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: PrimaryLightColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: child,
    );
  }

}