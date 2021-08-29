import 'package:first_app/Models/NavItem.dart';
import 'package:first_app/Screens/Main/MainPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NavItems>(
        create: (context) => NavItems(),
        child: MaterialApp(
          home: MainPage(),
        ),
    );
  }
}
