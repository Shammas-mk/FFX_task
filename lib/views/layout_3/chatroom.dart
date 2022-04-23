import 'package:flutter/material.dart';

class ChatRoom extends StatelessWidget {
  const ChatRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        // color: Colors.amberAccent,
        width: double.infinity,
        child: Column(
          children: [
            getChatRoom("Class Rooms"),
            getSpecialRoom("24", "Special Room", "Talk with Brand"),
            // GetChatList("16", "chat room 1", "Show here last message..."),

            // new list
            getChatList(
                "24", "Chat Room 1", "Show here last messege....", "12:36 pm"),
            // new list
            getChatList("16", "Chat Room 2", "Show here last messege....",
                "12:36 pm yesterday"),
            // new list
            getChatList("59", "Chat Room 3", "Show here last messege....",
                "10:40 Am 05 Jan"),
          ],
        ),
      ),
    );
  }

  getChatRoom(name) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Row(
        children: [
          Text(
            (name),
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 170),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.launch_sharp,
                  size: 20,
                  color: Colors.black,
                )),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.keyboard_double_arrow_down_sharp,
                color: Colors.black),
          ),
        ],
      ),
    );
  }

  getSpecialRoom(number, title, subtile) {
    return InkWell(
      hoverColor: const Color(0xFFDFEDFB),
      onTap: () => {},
      child: Card(
        child: Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 244, 221, 143),
                      borderRadius: BorderRadius.circular(100)
                      //more than 50% of width makes circle
                      ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)
                            //more than 50% of width makes circle
                            ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              number,
                              style: const TextStyle(fontSize: 12),
                            ),
                            const Icon(Icons.person_outline_outlined),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      subtile,
                      style: const TextStyle(
                          color: Colors.lightBlue, fontSize: 13),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }

  getChatList(number, title, subtile, time) {
    return InkWell(
      hoverColor: const Color(0xFFDFEDFB),
      onTap: () => {},
      child: Card(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(100)
                    //more than 50% of width makes circle
                    ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)
                          //more than 50% of width makes circle
                          ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            number,
                            style: const TextStyle(fontSize: 13),
                          ),
                          const Icon(Icons.person_outline_outlined),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      subtile,
                      style: const TextStyle(color: Colors.black, fontSize: 13),
                    ),
                  ],
                ),
              ),
              Text(
                time,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
