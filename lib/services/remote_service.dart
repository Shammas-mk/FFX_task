import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:shopbuzz/model/post.dart';

class RemoteService {
  static var client = http.Client();
  static Future fetchPost() async {
    print("object");

    final url = Uri.parse(
        'https://apidev.cohora.net/post/v1/feed?postTypes=POST&feedOrigin=POSTS&page=6&perPage=20');

    var response = await client.get(url);
    print(response.statusCode);
    // print(response.body);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      Feed items = feedFromJson(jsonString);
      print("gt" + items.totalItems.toString());
      return response.body;
    } else {
      // error massege
      return null;
    }
    //error messege
  }
}
