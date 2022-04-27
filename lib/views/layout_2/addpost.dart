import 'package:flutter/material.dart';

class AddWidget extends StatelessWidget {
  const AddWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xFFF5FAFE),
          borderRadius: BorderRadius.circular(10)),
      height: 60,
      child: InkWell(
        onTap: () => {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(Icons.add_circle_outline_rounded, color: Color(0xFF5EA6ED)),
            SizedBox(
              width: 10,
            ),
            Text(
              "Add post",
              style: TextStyle(
                  color: Color(0xFF5EA6ED), fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
