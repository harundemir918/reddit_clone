/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'dart:math';

import '../../../../models/post_model.dart';
import '../../../mock/mock_posts_list.dart';

class FakePostsProvider {
  Future<List<Post>> fetchPostsList() async {
    final randomBool = Random().nextBool();
    await Future.delayed(const Duration(seconds: 1));
    if (randomBool) {
      return mockPostsList;
    } else {
      throw Exception("Failed to fetch data.");
    }
  }
}
