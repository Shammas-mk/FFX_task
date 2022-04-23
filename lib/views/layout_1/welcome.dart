import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Welcome to the community",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Text("Total people Online :"),
                        Text(
                          "1200",
                          style: TextStyle(
                            color: Colors.lightBlue,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2020/04/11/14/55/houses-5030731_960_720.jpg'),
                ),
                title: Text(
                  "Sormy Curpen",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color(0xFFF5FAFE),
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.people_outline,
                        color: Color.fromARGB(255, 87, 149, 255)),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Friends"),
                    Expanded(
                        child: Container(
                      alignment: Alignment.centerRight,
                      child: const Text("150"),
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 45,
                      height: 25,
                      child: Stack(
                        fit: StackFit.expand,
                        children: const [
                          Positioned(
                            left: 0,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2020/11/08/09/41/deer-5723225_960_720.jpg'),
                              radius: 10,
                            ),
                          ),
                          Positioned(
                            left: 10,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2020/11/01/19/41/autumn-5704791_960_720.jpg'),
                              radius: 10,
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2020/04/11/14/55/houses-5030731_960_720.jpg'),
                              radius: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // followers
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: const BoxDecoration(
                    color: Color(0xFFF5FAFE),
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.supervised_user_circle_outlined,
                        color: Color.fromARGB(255, 87, 149, 255)),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Followers"),
                    Expanded(
                        child: Container(
                      alignment: Alignment.centerRight,
                      child: const Text("59"),
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 45,
                      height: 25,
                      child: Stack(
                        fit: StackFit.expand,
                        children: const [
                          Positioned(
                            left: 0,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2020/11/08/09/41/deer-5723225_960_720.jpg'),
                              radius: 10,
                            ),
                          ),
                          Positioned(
                            left: 10,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2020/11/01/19/41/autumn-5704791_960_720.jpg'),
                              radius: 10,
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2020/04/11/14/55/houses-5030731_960_720.jpg'),
                              radius: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //messages
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: const BoxDecoration(
                    color: Color(0xFFF5FAFE),
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.forward_to_inbox,
                        color: Color.fromARGB(255, 87, 149, 255)),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Messeges"),
                    Expanded(
                        child: Container(
                      alignment: Alignment.centerRight,
                    )),
                    Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 252, 168, 58),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      // width: 45,
                      // height: 25,
                      child: Container(
                        margin: const EdgeInsets.all(3),
                        child: const Text(
                          "11",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // loyalty Coins
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: const BoxDecoration(
                    color: Color(0xFFF5FAFE),
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.people_outline,
                        color: Color.fromARGB(255, 87, 149, 255)),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Loyalty Icons"),
                    Expanded(
                        child: Container(
                      alignment: Alignment.centerRight,
                    )),
                    Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 252, 168, 58),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      // width: 45,
                      // height: 25,
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        child: const Text(
                          "400",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
