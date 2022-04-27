// To parse this JSON data, do
//
//     final feed = feedFromJson(jsonString);

import 'dart:convert';

Feed feedFromJson(String str) => Feed.fromJson(json.decode(str));

String feedToJson(Feed data) => json.encode(data.toJson());

class Feed {
  Feed({
    required this.totalItems,
    required this.totalPages,
    required this.page,
    required this.items,
  });

  int totalItems;
  int totalPages;
  int page;
  List<Item> items;

  factory Feed.fromJson(Map<String, dynamic> json) => Feed(
        totalItems: json["totalItems"],
        totalPages: json["totalPages"],
        page: json["page"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "totalItems": totalItems,
        "totalPages": totalPages,
        "page": page,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class Item {
  Item({
    required this.id,
    // required this.createdAt,
    // required this.lastUpdatedAt,
    // required this.postType,
    // required this.name,
    required this.userInfo,
    // required this.shareLinks,
    // required this.postComments,
    // required this.liked,
    // required this.likesCount,
    // required this.likes,
    // required this.contestPrizes,
    // required this.actionButtons,
    required this.assets,
    required this.publishAt,
    // required this.canEdit,
    // required this.canDelete,
    // required this.futureDated,
    // required this.pinned,
    // required this.reward,
    // required this.viewUrl,
    // required this.activityType,
    // required this.activityUserInfo,
    required this.text,
    // required this.favouriteCounter,
    // required this.deadlineAt,
    // required this.tcUrl,
    // required this.canEnter,
    // required this.quizState,
    // required this.status,
    // required this.totalQuestions,
    // required this.completedQuestions,
    // required this.successRate,
  });

  String id;
  // DateTime createdAt;
  // DateTime lastUpdatedAt;
  // String postType;
  // String name;
  UserInfo userInfo;
  // List<ShareLink> shareLinks;
  // List<PostComment> postComments;
  // String liked;
  // LikesCount likesCount;
  // List<Like> likes;
  // List<ContestPrize> contestPrizes;
  // List<ActionButton> actionButtons;
  List<Asset> assets;
  DateTime publishAt;
  // bool canEdit;
  // bool canDelete;
  // bool futureDated;
  // bool pinned;
  // String reward;
  // String viewUrl;
  // String activityType;
  // UserInfo activityUserInfo;
  String text;
  // int favouriteCounter;
  // DateTime deadlineAt;
  // String tcUrl;
  // bool canEnter;
  // String quizState;
  // String status;
  // int totalQuestions;
  // int completedQuestions;
  // int successRate;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        // createdAt: DateTime.parse(json["createdAt"]),
        // lastUpdatedAt: DateTime.parse(json["lastUpdatedAt"]),
        // postType: json["postType"],
        // name: json["name"],
        userInfo: UserInfo.fromJson(json["userInfo"]),
        // shareLinks: List<ShareLink>.from(
        //     json["shareLinks"].map((x) => ShareLink.fromJson(x))),
        // postComments: List<PostComment>.from(
        //     json["postComments"].map((x) => PostComment.fromJson(x))),
        // liked: json["liked"],
        // likesCount: LikesCount.fromJson(json["likesCount"]),
        // likes: List<Like>.from(json["likes"].map((x) => Like.fromJson(x))),
        // contestPrizes: List<ContestPrize>.from(
        //     json["contestPrizes"].map((x) => ContestPrize.fromJson(x))),
        // actionButtons: List<ActionButton>.from(
        //     json["actionButtons"].map((x) => ActionButton.fromJson(x))),
        assets: List<Asset>.from(json["assets"].map((x) => Asset.fromJson(x))),
        publishAt: DateTime.parse(json["publishAt"]),
        // canEdit: json["canEdit"],
        // canDelete: json["canDelete"],
        // futureDated: json["futureDated"],
        // pinned: json["pinned"],
        // reward: json["reward"],
        // viewUrl: json["viewUrl"],
        // activityType: json["activityType"],
        // activityUserInfo: UserInfo.fromJson(json["activityUserInfo"]),
        text: json["text"] ?? "nothing",
        // favouriteCounter: json["favouriteCounter"],
        // deadlineAt: DateTime.parse(json["deadlineAt"]),
        // tcUrl: json["tcUrl"],
        // canEnter: json["canEnter"],
        // quizState: json["quizState"],
        // status: json["status"],
        // totalQuestions: json["totalQuestions"],
        // completedQuestions: json["completedQuestions"],
        // successRate: json["successRate"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        // "createdAt": createdAt.toIso8601String(),
        // "lastUpdatedAt": lastUpdatedAt.toIso8601String(),
        // "postType": postType,
        // "name": name,
        "userInfo": userInfo.toJson(),
        // "shareLinks": List<dynamic>.from(shareLinks.map((x) => x.toJson())),
        // "postComments": List<dynamic>.from(postComments.map((x) => x.toJson())),
        // "liked": liked,
        // "likesCount": likesCount.toJson(),
        // "likes": List<dynamic>.from(likes.map((x) => x.toJson())),
        // "contestPrizes":
        //     List<dynamic>.from(contestPrizes.map((x) => x.toJson())),
        // "actionButtons":
        //     List<dynamic>.from(actionButtons.map((x) => x.toJson())),
        "assets": List<dynamic>.from(assets.map((x) => x.toJson())),
        // "publishAt": publishAt.toIso8601String(),
        // "canEdit": canEdit,
        // "canDelete": canDelete,
        // "futureDated": futureDated,
        // "pinned": pinned,
        // "reward": reward,
        // "viewUrl": viewUrl,
        // "activityType": activityType,
        // "activityUserInfo": activityUserInfo.toJson(),
        "text": text,
        // "favouriteCounter": favouriteCounter,
        // "deadlineAt": deadlineAt.toIso8601String(),
        // "tcUrl": tcUrl,
        // "canEnter": canEnter,
        // "quizState": quizState,
        // "status": status,
        // "totalQuestions": totalQuestions,
        // "completedQuestions": completedQuestions,
        // "successRate": successRate,
      };
}

class ActionButton {
  ActionButton({
    required this.actionUrl,
    required this.actionDescription,
    required this.actionTextColor,
    required this.actionBackgroundColor,
  });

  String actionUrl;
  String actionDescription;
  String actionTextColor;
  String actionBackgroundColor;

  factory ActionButton.fromJson(Map<String, dynamic> json) => ActionButton(
        actionUrl: json["actionUrl"],
        actionDescription: json["actionDescription"],
        actionTextColor: json["actionTextColor"],
        actionBackgroundColor: json["actionBackgroundColor"],
      );

  Map<String, dynamic> toJson() => {
        "actionUrl": actionUrl,
        "actionDescription": actionDescription,
        "actionTextColor": actionTextColor,
        "actionBackgroundColor": actionBackgroundColor,
      };
}

class UserInfo {
  UserInfo({
    // required this.id,
    // required this.guest,
    required this.photoUrl,
    // required this.nickname,
    // required this.name,
    // required this.surname,
    // required this.type,
    required this.displayName,
    // required this.influencer,
  });

  // String id;
  // bool guest;
  String photoUrl;
  // String nickname;
  // String name;
  // String surname;
  // String type;
  String displayName;
  // bool influencer;

  factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
        // id: json["id"],
        // guest: json["guest"],
        photoUrl: json["photoUrl"],
        // nickname: json["nickname"],
        // name: json["name"],
        // surname: json["surname"],
        // type: json["type"],
        displayName: json["displayName"],
        // influencer: json["influencer"],
      );

  Map<String, dynamic> toJson() => {
        // "id": id,
        // "guest": guest,
        "photoUrl": photoUrl,
        // "nickname": nickname,
        // "name": name,
        // "surname": surname,
        // "type": type,
        "displayName": displayName,
        // "influencer": influencer,
      };
}

class Asset {
  Asset({
    // required this.id,
    // required this.createdAt,
    // required this.lastUpdatedAt,
    required this.url,
    // required this.bucket,
    // required this.type,
    // required this.mimeType,
    // required this.filesize,
    // required this.width,
    // required this.height,
    // required this.durationSeconds,
    // required this.profileId,
    // required this.description,
    // required this.thumbnails,
    // required this.hash,
    // required this.originalFilename,
  });

  // String id;
  // DateTime createdAt;
  // DateTime lastUpdatedAt;
  String url;
  // String bucket;
  // String type;
  // String mimeType;
  // int filesize;
  // int width;
  // int height;
  // int durationSeconds;
  // String profileId;
  // String description;
  // List<Thumbnail> thumbnails;
  // String hash;
  // String originalFilename;

  factory Asset.fromJson(Map<String, dynamic> json) => Asset(
        // id: json["id"],
        // createdAt: DateTime.parse(json["createdAt"]),
        // lastUpdatedAt: DateTime.parse(json["lastUpdatedAt"]),
        url: json["url"],
        // bucket: json["bucket"],
        // type: json["type"],
        // mimeType: json["mimeType"],
        // filesize: json["filesize"],
        // width: json["width"],
        // height: json["height"],
        // durationSeconds: json["durationSeconds"],
        // profileId: json["profileId"],
        // description: json["description"],
        // thumbnails: List<Thumbnail>.from(
        //     json["thumbnails"].map((x) => Thumbnail.fromJson(x))),
        // hash: json["hash"],
        // originalFilename: json["originalFilename"],
      );

  Map<String, dynamic> toJson() => {
        // "id": id,
        // "createdAt": createdAt.toIso8601String(),
        // "lastUpdatedAt": lastUpdatedAt.toIso8601String(),
        "url": url,
        // "bucket": bucket,
        // "type": type,
        // "mimeType": mimeType,
        // "filesize": filesize,
        // "width": width,
        // "height": height,
        // "durationSeconds": durationSeconds,
        // "profileId": profileId,
        // "description": description,
        // "thumbnails": List<dynamic>.from(thumbnails.map((x) => x.toJson())),
        // "hash": hash,
        // "originalFilename": originalFilename,
      };
}

class Thumbnail {
  Thumbnail({
    required this.id,
    required this.createdAt,
    required this.lastUpdatedAt,
    required this.type,
    required this.url,
    required this.mimeType,
    required this.filesize,
    required this.width,
    required this.height,
    required this.durationSeconds,
  });

  String id;
  DateTime createdAt;
  DateTime lastUpdatedAt;
  String type;
  String url;
  String mimeType;
  int filesize;
  int width;
  int height;
  int durationSeconds;

  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
        id: json["id"],
        createdAt: DateTime.parse(json["createdAt"]),
        lastUpdatedAt: DateTime.parse(json["lastUpdatedAt"]),
        type: json["type"],
        url: json["url"],
        mimeType: json["mimeType"],
        filesize: json["filesize"],
        width: json["width"],
        height: json["height"],
        durationSeconds: json["durationSeconds"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "createdAt": createdAt.toIso8601String(),
        "lastUpdatedAt": lastUpdatedAt.toIso8601String(),
        "type": type,
        "url": url,
        "mimeType": mimeType,
        "filesize": filesize,
        "width": width,
        "height": height,
        "durationSeconds": durationSeconds,
      };
}

class ContestPrize {
  ContestPrize({
    required this.id,
    required this.position,
    required this.place,
    required this.count,
    required this.description,
  });

  String id;
  int position;
  String place;
  int count;
  String description;

  factory ContestPrize.fromJson(Map<String, dynamic> json) => ContestPrize(
        id: json["id"],
        position: json["position"],
        place: json["place"],
        count: json["count"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "position": position,
        "place": place,
        "count": count,
        "description": description,
      };
}

class Like {
  Like({
    required this.id,
    required this.createdAt,
    required this.lastUpdatedAt,
    required this.userInfo,
    required this.emotion,
  });

  String id;
  DateTime createdAt;
  DateTime lastUpdatedAt;
  UserInfo userInfo;
  String emotion;

  factory Like.fromJson(Map<String, dynamic> json) => Like(
        id: json["id"],
        createdAt: DateTime.parse(json["createdAt"]),
        lastUpdatedAt: DateTime.parse(json["lastUpdatedAt"]),
        userInfo: UserInfo.fromJson(json["userInfo"]),
        emotion: json["emotion"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "createdAt": createdAt.toIso8601String(),
        "lastUpdatedAt": lastUpdatedAt.toIso8601String(),
        "userInfo": userInfo.toJson(),
        "emotion": emotion,
      };
}

class LikesCount {
  LikesCount({
    required this.additionalProp1,
    required this.additionalProp2,
    required this.additionalProp3,
  });

  int additionalProp1;
  int additionalProp2;
  int additionalProp3;

  factory LikesCount.fromJson(Map<String, dynamic> json) => LikesCount(
        additionalProp1: json["additionalProp1"],
        additionalProp2: json["additionalProp2"],
        additionalProp3: json["additionalProp3"],
      );

  Map<String, dynamic> toJson() => {
        "additionalProp1": additionalProp1,
        "additionalProp2": additionalProp2,
        "additionalProp3": additionalProp3,
      };
}

class PostComment {
  PostComment({
    required this.id,
    required this.createdAt,
    required this.lastUpdatedAt,
    required this.text,
    required this.userInfo,
    required this.liked,
    required this.likesCount,
    required this.likes,
    required this.display,
    required this.type,
  });

  String id;
  DateTime createdAt;
  DateTime lastUpdatedAt;
  String text;
  UserInfo userInfo;
  String liked;
  LikesCount likesCount;
  List<Like> likes;
  bool display;
  String type;

  factory PostComment.fromJson(Map<String, dynamic> json) => PostComment(
        id: json["id"],
        createdAt: DateTime.parse(json["createdAt"]),
        lastUpdatedAt: DateTime.parse(json["lastUpdatedAt"]),
        text: json["text"],
        userInfo: UserInfo.fromJson(json["userInfo"]),
        liked: json["liked"],
        likesCount: LikesCount.fromJson(json["likesCount"]),
        likes: List<Like>.from(json["likes"].map((x) => Like.fromJson(x))),
        display: json["display"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "createdAt": createdAt.toIso8601String(),
        "lastUpdatedAt": lastUpdatedAt.toIso8601String(),
        "text": text,
        "userInfo": userInfo.toJson(),
        "liked": liked,
        "likesCount": likesCount.toJson(),
        "likes": List<dynamic>.from(likes.map((x) => x.toJson())),
        "display": display,
        "type": type,
      };
}

class ShareLink {
  ShareLink({
    required this.name,
    required this.icon,
    required this.shareUrl,
  });

  String name;
  String icon;
  String shareUrl;

  factory ShareLink.fromJson(Map<String, dynamic> json) => ShareLink(
        name: json["name"],
        icon: json["icon"],
        shareUrl: json["shareUrl"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "icon": icon,
        "shareUrl": shareUrl,
      };
}
