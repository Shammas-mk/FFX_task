import 'package:flutter/material.dart';
import 'package:shopbuzz/views/layout_1/interests.dart';
import 'package:shopbuzz/views/layout_1/slider.dart';
import 'package:shopbuzz/views/layout_1/slider_2.dart';
import 'package:shopbuzz/views/layout_1/welcome.dart';

// ignore: camel_case_types
class LayoutPage_1 extends StatelessWidget {
  const LayoutPage_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          margin: const EdgeInsets.only(left: 10),
          // color: Colors.red,
          child: Column(
            children: const [
              WelcomeWidget(),
              SliderWidget(),
              SliderWidget2(),
              InterestWidget(),
            ],
          )),
    );
  }
}
