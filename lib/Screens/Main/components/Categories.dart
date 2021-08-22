import 'package:first_app/SizeConfig.dart';
import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget
{
  @override
  CategoriesState createState() {
    return CategoriesState();
  }
}
class CategoriesState extends State<Categories>
{
  List<String> categories = ["All", "Indian", "Italian", "Mexican", "Chinese"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
  return Padding(
      padding:  EdgeInsets.symmetric(vertical: SizeConfig.defaultSize! * 2),
      child: SizedBox(
          height: SizeConfig.defaultSize! * 3.5, // 35
          child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategoriItem(index),
        ),
       ),
    );
  }

  Widget buildCategoriItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: SizeConfig.defaultSize! * 2),
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.defaultSize! * 2, //20
          vertical: SizeConfig.defaultSize! * 0.5, //5
        ),
        decoration: BoxDecoration(
            color:
            selectedIndex == index ? Color(0xFFEFF3EE) : Colors.transparent,
            borderRadius: BorderRadius.circular(
              SizeConfig.defaultSize! * 1.6, // 16
            )),
        child: Text(
          categories[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: selectedIndex == index ? BackgroundDefaultColor : Color(0xFFC2C2B5),
          ),
        ),
      ),
    );
  }
}