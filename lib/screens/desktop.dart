import 'package:flutter/material.dart';
import 'package:shopbuzz/views/layout_1/main_layout_1.dart';
import 'package:shopbuzz/views/layout_2/main_layout_2.dart';
import 'package:shopbuzz/views/layout_3/main_layout_3.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: const LayoutPage_1(),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          // color: Colors.blue,
          // alignment: Alignment.center,
          child: const LayoutPage_2(),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: const LayoutPage_3(),
        ),
      ],
    );
  }
}
