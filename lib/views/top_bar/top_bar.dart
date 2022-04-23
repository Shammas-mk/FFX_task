import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      width: double.infinity,
      height: 70,
      child: Card(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2020/04/11/14/55/houses-5030731_960_720.jpg'),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () => {},
                child: Container(
                  width: 250,
                  height: 40,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: Colors.white30,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.search)),
                      const Text(
                        "Search",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 150,
                      height: 40,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        color: Color.fromARGB(77, 247, 245, 130),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Shopbuzz"),
                          Icon(Icons.shopping_bag_outlined)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.add_alert_rounded),
              const SizedBox(
                width: 20,
              ),
              const SizedBox(
                width: 5,
              ),
              Stack(
                children: const [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2020/04/11/14/55/houses-5030731_960_720.jpg'),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 5,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
