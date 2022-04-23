import 'package:flutter/material.dart';
import 'package:shopbuzz/views/layout_3/chatroom.dart';
import 'package:shopbuzz/views/layout_3/contests.dart';
import 'package:shopbuzz/views/layout_3/follow.dart';
import 'package:shopbuzz/views/layout_3/hotproduct.dart';

// ignore: camel_case_types
class LayoutPage_3 extends StatelessWidget {
  const LayoutPage_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          margin: const EdgeInsets.only(right: 10),
          // color: Colors.red,
          child: Column(
            children: const [
              HotProducts(),
              FollowInf(),
              Contests(),
              ChatRoom(),
            ],
          )),
    );
  }
}
