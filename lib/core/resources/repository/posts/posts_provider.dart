/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:dio/dio.dart';

import '../../../constants/string_constants.dart';
import '../../../models/post_model.dart';
import '../../../models/reddit_response_model.dart';

class PostsProvider {
  Dio dio = Dio();

  Future<List<Post>> fetchPostsList() async {
    const url = "$baseUrl/r/flutterdev/top.json?count=20";
    try {
      final response = await dio.get(url);
      final responseModel = RedditResponse.fromJson(response.data);
      return responseModel.data.children;
    } on DioException catch (e) {
      throw Exception("Failed to fetch data: $e");
    }
  }
}
