import 'package:get/get.dart';
import 'package:shopbuzz/model/post.dart';
import 'package:shopbuzz/services/remote_service.dart';

class PostController extends GetxController {
  var postList = <Feed>[].obs;
  @override
  void onInit() {
    fetchPost();
    super.onInit();
  }

  void fetchPost() async {
    var posts = RemoteService.fetchPost();
    postList.value = posts as List<Feed>;
    print(posts);
  }
}
