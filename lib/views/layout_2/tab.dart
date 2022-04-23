import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(Icons.display_settings),
          getCardItem('Photos'),
          getCardItem('Videos'),
          getCardItem('Contests'),
          getCardItem('Articles'),
          getCardItem('Posts'),
        ],
      ),
    );
  }

  getCardItem(name) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      elevation: 2,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
