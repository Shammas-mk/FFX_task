import 'package:flutter/material.dart';
import 'package:shopbuzz/screens/desktop.dart';
import 'package:shopbuzz/views/top_bar/top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          TopBar(),
          Expanded(
            child: DesktopScreen(),
          ),
        ],
      ),
    );
  }
}
