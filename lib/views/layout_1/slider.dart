import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
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
    {
      "title": "Image 4",
      "url":
          "https://cdn.pixabay.com/photo/2020/11/16/16/05/hoverfly-5749361_960_720.jpg"
    },
    {
      "title": "Image 5",
      "url":
          "https://cdn.pixabay.com/photo/2020/04/19/12/26/thread-5063401_960_720.jpg"
    },
    {
      "title": "Image 6",
      "url":
          "https://cdn.pixabay.com/photo/2020/11/16/22/58/mountains-5750804_960_720.jpg"
    },
  ];
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          // Implement the image carousel
          CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  currentPage = index;
                });
                {}
              },
              autoPlay: true,
              // autoPlayCurve: Curves.linear,
              autoPlayInterval: const Duration(seconds: 2),
              autoPlayAnimationDuration: const Duration(milliseconds: 400),
              height: 200,
            ),
            items: data.map((item) {
              return AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(item["url"], fit: BoxFit.cover),
              );
            }).toList(),
          ),
          const SizedBox(height: 10),

          const Text(
            'Quizzes/Survey',
            style: TextStyle(
                color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          DotsIndicator(
              dotsCount: data.length,
              position: currentPage + 0.0,
              decorator: const DotsDecorator(
                color: Colors.grey, // Inactive color
                activeColor: Colors.green,
              )),
        ],
      ),
    );
  }
}
