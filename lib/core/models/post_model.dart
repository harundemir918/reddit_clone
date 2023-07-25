/*
Author: Harun Demir
Date: 25.07.2023
*/

class Post {
  Data data;

  Post({
    required this.data,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  String subreddit;
  String selftext;
  String title;
  String subredditNamePrefixed;
  int downs;
  double upvoteRatio;
  int ups;
  String linkFlairText;
  int score;
  String thumbnail;
  int numComments;

  Data({
    required this.subreddit,
    required this.selftext,
    required this.title,
    required this.subredditNamePrefixed,
    required this.downs,
    required this.upvoteRatio,
    required this.ups,
    required this.linkFlairText,
    required this.score,
    required this.thumbnail,
    required this.numComments,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        subreddit: json["subreddit"],
        selftext: json["selftext"],
        title: json["title"],
        subredditNamePrefixed: json["subreddit_name_prefixed"],
        downs: json["downs"],
        upvoteRatio: json["upvote_ratio"]?.toDouble(),
        ups: json["ups"],
        linkFlairText: json["link_flair_text"],
        score: json["score"],
        thumbnail: json["thumbnail"],
        numComments: json["num_comments"],
      );

  Map<String, dynamic> toJson() => {
        "subreddit": subreddit,
        "selftext": selftext,
        "title": title,
        "subreddit_name_prefixed": subredditNamePrefixed,
        "downs": downs,
        "upvote_ratio": upvoteRatio,
        "ups": ups,
        "link_flair_text": linkFlairText,
        "score": score,
        "thumbnail": thumbnail,
        "num_comments": numComments,
      };
}
