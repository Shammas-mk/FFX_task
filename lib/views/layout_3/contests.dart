import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class Contests extends StatefulWidget {
  const Contests({Key? key}) : super(key: key);

  @override
  State<Contests> createState() => _ContestsState();
}

class _ContestsState extends State<Contests> {
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
  ];
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      clipBehavior: Clip.antiAlias,
      child: Container(
        color: const Color.fromARGB(255, 249, 218, 151),
        width: double.infinity,
        height: 150,
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Stack(
            fit: StackFit.expand,
            children: [
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
                ),
                items: data.map((item) {
                  return Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      AspectRatio(
                        aspectRatio: 1,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          clipBehavior: Clip.antiAlias,
                          child: Image.network(item["url"], fit: BoxFit.cover),
                        ),
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          Expanded(
                            child: Text(
                              "Current Contests",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 236, 128, 21)),
                            ),
                          ),
                          Text(
                            "First prize",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 236, 128, 21)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 255, 131, 7)),
                            onPressed: () {
                              print("clicked");
                            },
                            child: Text("Prize"),
                          )
                        ],
                      )),
                    ],
                  );
                }).toList(),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: DotsIndicator(
                  dotsCount: data.length,
                  position: currentPage + 0.0,
                  decorator: const DotsDecorator(
                    color: Colors.grey, // Inactive color
                    activeColor: Color.fromARGB(255, 236, 128, 21),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
