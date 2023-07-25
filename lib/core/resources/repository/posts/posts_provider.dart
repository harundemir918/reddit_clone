/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:dio/dio.dart';
import 'package:reddit_clone/core/models/post_model.dart';
import 'package:reddit_clone/core/models/reddit_response_model.dart';
import 'package:reddit_clone/core/resources/repository/abstract/abstract_posts_provider.dart';

class PostsProvider extends AbstractPostsProvider {
  Dio dio = Dio();

  @override
  Future<List<Post>> fetchPostsList() async {
    const url = "https://www.reddit.com/r/flutterdev/top.json?count=20";
    try {
      final response = await dio.get(url);
      final responseModel = RedditResponse.fromJson(response.data);
      return responseModel.data.children;
    } on DioException catch (e) {
      throw Exception("Failed to fetch data: $e");
    }
  }
}
