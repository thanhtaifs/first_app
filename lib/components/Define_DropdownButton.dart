import 'package:first_app/Models/Gender.dart';
import 'package:first_app/components/DropdownButtonContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class define_DropdownButton extends StatelessWidget
{
  final String value;
  final Icon? icon;
  final IconData? leadingicon;
  final ValueChanged<String?> onChanged;
  final TextEditingController? controller;
  final List<DropdownMenuItem<String>>? items;
  const define_DropdownButton({
    Key? key,
    required this.value,
    this.icon,
    this.leadingicon = Icons.select_all,
    required this.onChanged,
    this.controller,
    this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return DropdownButtonContainer(
    child: DropdownButtonFormField(
      value: value,
      icon: icon,
      iconSize: 24,
      elevation: 16,
      style: TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
        icon: Icon(
          leadingicon,
          color: BackgroundDefaultColor,
        ),
        border: InputBorder.none,
      ),
      onChanged: onChanged,
      items: items,
    ),
  );

  }
  
}