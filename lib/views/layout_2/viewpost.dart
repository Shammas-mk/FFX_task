import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:shopbuzz/model/post.dart';
import 'package:shopbuzz/services/remote_service.dart';

class ViewPost extends StatelessWidget {
  const ViewPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Feed remoteResponse = await RemoteService.fetchPost();

    return FutureBuilder(
        future: RemoteService.fetchPost(),
        builder: (context, data) {
          if (data.hasData) {
            int pagen = 0;
            if (data.data != null) {
              Feed obj = feedFromJson(data.data.toString());
              pagen = obj.page;

              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: obj.items.length,
                  itemBuilder: (context, pos) {
                    return getPostItem(obj.items[pos]);
                  });

              // return Container(
              //   child: Center(child: Text(pagen.toString())),
              // );
            } else {
              return Container(
                margin: const EdgeInsets.only(top: 180),
                child: const Center(
                  child: CircularProgressIndicator(
                    color: Colors.red,
                  ),
                ),
              );
            }
          } else {
            return Container(
              margin: const EdgeInsets.only(top: 180),
              child: const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              ),
            );
          }
        });
  }

  getPostItem(Item item2) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage('${item2.userInfo.photoUrl}'),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item2.userInfo.displayName,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  //changed here
                  Text('${item2.publishAt} minutes ago',
                      style: const TextStyle(color: Colors.grey, fontSize: 13))
                ],
              )),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.screen_share_outlined,
                    color: Colors.black,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz_rounded,
                      color: Colors.black)),
            ],
          ),
        ),
        Container(
          width: double.maxFinite,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Html(
            data: '${item2.text}',
            // style: TextStyle(
            //   fontWeight: FontWeight.w600,
            // ),
            // textAlign: TextAlign.start,
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.only(left: 15, bottom: 10),
          // child: const
          // Text(
          //   "Read more",
          //   style: TextStyle(fontWeight: FontWeight.w300, color: Colors.grey),
          // ),
        ),
        if (item2.assets.length > 0)
          Image.network(
            '${item2.assets[0].url}',
            fit: BoxFit.cover,
          ),
        Container(
          margin:
              const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
          child: Row(
            children: [
              const Icon(
                Icons.thumb_up_alt_outlined,
                color: Color(0xFF70D65C),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "sdf",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 15,
              ),
              getDot(const Color.fromARGB(255, 255, 36, 20)),
              getDot(const Color.fromARGB(255, 231, 255, 20)),
              getDot(const Color.fromARGB(255, 20, 102, 255)),
              const SizedBox(
                width: 10,
              ),
              Text(
                "sdf",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 15,
              ),
              const Expanded(
                  child: Text(
                "All Reactions",
                style: TextStyle(color: Colors.grey),
              )),
              const SizedBox(
                width: 10,
              ),
              Text(
                "dfg",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.message_outlined,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ],
          ),
        )
      ],
    );
  }

  getDot(color) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: color, width: 3.5),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
    );
  }
}
