import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          "Switch to Web or Desktop",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
        ),
      ),
    );
  }
}
