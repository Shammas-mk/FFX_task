import 'package:flutter/material.dart';

class InterestWidget extends StatelessWidget {
  const InterestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Card(
        color: const Color(0xFFF5FAFE),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                "Interests",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            getInterestItem(
                "https://cdn.pixabay.com/photo/2020/11/01/19/41/autumn-5704791_960_720.jpg",
                "Jack posted a Video",
                "Purus nisi diam sem ut pellentesque.",
                "2 hours ago",
                "https://cdn.pixabay.com/photo/2020/11/08/09/41/deer-5723225_960_720.jpg"),
            getInterestItem(
                "https://cdn.pixabay.com/photo/2020/11/01/19/41/autumn-5704791_960_720.jpg",
                "Albert Eldman posted",
                "Purus nisi diam sem ut pellentesque.",
                "2 hours ago",
                "https://cdn.pixabay.com/photo/2020/11/08/09/41/deer-5723225_960_720.jpg"),
            getInterestItem(
                "https://cdn.pixabay.com/photo/2020/11/01/19/41/autumn-5704791_960_720.jpg",
                "Jack posted a Video",
                "Purus nisi diam sem ut pellentesque.",
                "2 hours ago",
                "https://cdn.pixabay.com/photo/2020/11/08/09/41/deer-5723225_960_720.jpg"),
            getInterestItem(
                "https://cdn.pixabay.com/photo/2020/11/01/19/41/autumn-5704791_960_720.jpg",
                "Jack posted a Video",
                "Purus nisi diam sem ut pellentesque.",
                "2 hours ago",
                "https://cdn.pixabay.com/photo/2020/11/08/09/41/deer-5723225_960_720.jpg"),
          ],
        ),
      ),
    );
  }

  getInterestItem(avatar, title, subtitle, time, thumbnail) {
    return InkWell(
      hoverColor: const Color(0xFFDFEDFB),
      onTap: () => {},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: CircleAvatar(
                backgroundImage: NetworkImage(avatar),
              ),
              margin: const EdgeInsets.only(right: 10, top: 10),
            ),
            Expanded(
                child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                height: 40,
                                child: Text(
                                  subtitle,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Text(
                                time,
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        clipBehavior: Clip.antiAlias,
                        child: Image(
                            height: 60,
                            width: 90,
                            fit: BoxFit.cover,
                            image: NetworkImage(thumbnail)),
                      )
                    ],
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
