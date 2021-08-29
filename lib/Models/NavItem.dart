import 'package:first_app/Models/Users.dart';
import 'package:first_app/Screens/Main/MainPage.dart';
import 'package:first_app/Screens/Profile/ProfilePage.dart';
import 'package:first_app/Screens/Welcome/WelcomePage.dart';
import 'package:flutter/material.dart';

class NavItem
{
  final int id;
  final String icon;
  final Widget destination;

  NavItem({
    required this.id,
    required this.icon,
    required this.destination
      });
  // If there is no destination then it help us
  bool destinationChecker() {
    if (destination != null) {
      return true;
    }
    return false;
  }
}
class NavItems extends ChangeNotifier
{
  int selectedIndex = 0;
  void chnageNavIndex({required int index}) {
    selectedIndex = index;
    // if any changes made it notify widgets that use the value
    notifyListeners();
  }

  List<NavItem> items = [
    NavItem(
      id: 1,
      icon: "assets/icons/search.svg",
      destination: MainPage(),
    ),
    NavItem(
      id: 2,
      icon: "assets/icons/chat.svg",
      destination: MainPage(),
    ),
    NavItem(
      id: 3,
      icon: "assets/icons/camera.svg",
      destination: MainPage(),
    ),
    NavItem(
      id: 4,
      icon: "assets/icons/chef_nav.svg",
      destination: MainPage(),
    ),
    NavItem(
      id: 5,
      icon: "assets/icons/menu.svg",
      destination: ProfilePage(),
    ),
  ];
}