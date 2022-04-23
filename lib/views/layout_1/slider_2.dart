import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class SliderWidget2 extends StatefulWidget {
  const SliderWidget2({Key? key}) : super(key: key);

  @override
  State<SliderWidget2> createState() => _SliderWidget2State();
}

class _SliderWidget2State extends State<SliderWidget2> {
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
      child: Stack(
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
              autoPlayInterval: const Duration(seconds: 2),
              autoPlayAnimationDuration: const Duration(milliseconds: 400),
              height: 160,
            ),
            items: data.map((item) {
              return AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(item["url"], fit: BoxFit.cover),
              );
            }).toList(),
          ),
          const Positioned(
              top: 10,
              bottom: 0,
              right: 5,
              left: 5,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2020/04/19/12/26/thread-5063401_960_720.jpg'),
                ),
                title: Text(
                  "Red Bull announces join Cohora!",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                // subtitle: Text("datehjhaakjd"),
                trailing: Text("2 hours ago",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
              )),
          Positioned(
            bottom: 5,
            left: 0,
            right: 0,
            child: DotsIndicator(
                dotsCount: data.length,
                position: currentPage + 0.0,
                decorator: const DotsDecorator(
                  color: Colors.white60, // Inactive color
                  activeColor: Colors.green,
                )),
          ),
        ],
      ),
    );
  }
}
