import 'package:flutter/material.dart';

class FollowInf extends StatelessWidget {
  const FollowInf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 100,
      color: const Color(0xFFF5FAFE),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            child: const Text(
              "Follow the influencers",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
            ),
          ),
          getFollowSuggest("Red Bull"),
          getFollowSuggest("Loius Vuitton"),
          getFollowSuggest("Nintendo"),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Show More",
              style: TextStyle(
                color: Color(0xFF46A4F2),
              ),
            ),
          )
        ],
      ),
    );
  }

  getFollowSuggest(name) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2020/11/01/19/41/autumn-5704791_960_720.jpg'),
            ),
            title: Row(
              children: [
                Text(name),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.school_rounded,
                  color: Color.fromARGB(250, 238, 195, 2),
                ),
              ],
            ),
            trailing: ElevatedButton(
              onPressed: () {},
              child: const Text("follow"),
              style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
            )),
      ),
    );
  }
}
