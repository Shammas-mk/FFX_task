import 'package:flutter/material.dart';
import 'package:shopbuzz/views/layout_2/addpost.dart';
import 'package:shopbuzz/views/layout_2/tab.dart';
import 'package:shopbuzz/views/layout_2/viewpost.dart';

// ignore: camel_case_types
class LayoutPage_2 extends StatelessWidget {
  const LayoutPage_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListView(
        children: [
          const TabWidget(),
          const AddWidget(),
          ViewPost(),
        ],
      ),
    );
  }
}
