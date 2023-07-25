/*
Author: Harun Demir
Date: 25.07.2023
*/

// To parse this JSON data, do
//
//     final redditResponse = redditResponseFromJson(jsonString);

import 'dart:convert';

import 'post_model.dart';

RedditResponse redditResponseFromJson(String str) =>
    RedditResponse.fromJson(json.decode(str));

String redditResponseToJson(RedditResponse data) => json.encode(data.toJson());

class RedditResponse {
  String kind;
  RedditResponseData data;

  RedditResponse({
    required this.kind,
    required this.data,
  });

  factory RedditResponse.fromJson(Map<String, dynamic> json) => RedditResponse(
        kind: json["kind"],
        data: RedditResponseData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "data": data.toJson(),
      };
}

class RedditResponseData {
  dynamic after;
  int dist;
  String modhash;
  String geoFilter;
  List<Post> children;
  String before;

  RedditResponseData({
    required this.dist,
    required this.modhash,
    required this.geoFilter,
    required this.children,
    required this.before,
    this.after,
  });

  factory RedditResponseData.fromJson(Map<String, dynamic> json) =>
      RedditResponseData(
        after: json["after"],
        dist: json["dist"],
        modhash: json["modhash"],
        geoFilter: json["geo_filter"],
        children:
            List<Post>.from(json["children"].map((x) => Post.fromJson(x))),
        before: json["before"],
      );

  Map<String, dynamic> toJson() => {
        "after": after,
        "dist": dist,
        "modhash": modhash,
        "geo_filter": geoFilter,
        "children": List<dynamic>.from(children.map((x) => x.toJson())),
        "before": before,
      };
}
