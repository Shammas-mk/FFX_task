import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class HotProducts extends StatefulWidget {
  const HotProducts({Key? key}) : super(key: key);

  @override
  State<HotProducts> createState() => _HotProductsState();
}

class _HotProductsState extends State<HotProducts> {
  // a list of images' URLs
  final List data = [
    {
      "title": "Image 1",
      "url":
          "https://cdn.pixabay.com/photo/2020/11/08/09/41/deer-5723225_960_720.jpg"
    },
    {
      "title": "Image 2",
      "url":
          "https://cdn.pixabay.com/photo/2020/11/01/19/41/autumn-5704791_960_720.jpg"
    },
    {
      "title": "Image 3",
      "url":
          "https://cdn.pixabay.com/photo/2020/04/11/14/55/houses-5030731_960_720.jpg"
    },
  ];
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hottest Products",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 140.0,
                child: // Implement the image carousel
                    ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return getHotProduct();
                  },
                )),
            Center(
              child: DotsIndicator(
                  dotsCount: data.length,
                  position: currentPage + 0.0,
                  decorator: const DotsDecorator(
                    color: Colors.grey, // Inactive color
                    activeColor: Colors.green,
                  )),
            ),
          ],
        ),
      ),
    );
  }

  getHotProductPage() {
    return Row(children: [getHotProduct(), getHotProduct(), getHotProduct()]);
  }

  getHotProduct() {
    return Card(
      child: Container(
        margin: const EdgeInsets.all(5),
        width: 100,
        height: 150,
        child: Stack(
          children: [
            const Image(
              height: 100,
              width: 100,
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2020/04/11/14/55/houses-5030731_960_720.jpg'),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(100)
                  //more than 50% of width makes circle
                  ),
              height: 20,
              width: 70,
              margin: const EdgeInsets.only(top: 60, left: 15),
              // color: Colors.green,
              child: const Center(child: Text("Exclusive")),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Red Bull Cap",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "£ 19.90",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "£ 39.90",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
