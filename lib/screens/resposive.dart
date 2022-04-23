import 'package:flutter/material.dart';
import 'package:shopbuzz/screens/homescreen.dart';
import 'package:shopbuzz/screens/mobile.dart';

class ResponsiveWidgets extends StatelessWidget {
  const ResponsiveWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 800) {
        return const MobileScreen();
      } else {
        return const HomeScreen();
      }
    });
  }
}
