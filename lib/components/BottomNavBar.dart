import 'package:first_app/Models/NavItem.dart';
import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../SizeConfig.dart';

class BottomNavBar extends StatelessWidget
{
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize;
    return Consumer<NavItems>(
        builder: (context, navItems, child) => Container(
      padding: EdgeInsets.symmetric(horizontal: defaultSize! * 3), //30
      // just for demo
      // height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 5,
            color: Color(0xFFFFFF).withOpacity(0.2),
          ),
        ],
      ),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                navItems.items.length,
                    (index) => buildIconNavBarItem(
                  isActive: navItems.selectedIndex == index ? true : false,
                  icon: navItems.items[index].icon,
                  press: () {
                    navItems.chnageNavIndex(index: index);
                    // maybe destinationChacker is not needed in future because then all of our nav items have destination
                    // But Now if we click those which dont have destination then it shows error
                    // And this fix this problem
                    if (navItems.items[index].destinationChecker())
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => navItems.items[index].destination,
                        ),
                      );
                  },
                ),
              ),
            ),
          ),
        ),
    );
  }

  IconButton buildIconNavBarItem({bool isActive = false, String? icon, Function()? press}) {
    return IconButton(
      icon: SvgPicture.asset(
        icon,
        color: isActive ? BackgroundDefaultColor : Color(0xFFD1D4D4),
        height: 24,
      ),
      onPressed: press,
    );
  }
}