/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'dart:math';

import '../../../../models/post_model.dart';
import '../../../mock/mock_posts_list.dart';
import '../../abstract/abstract_posts_provider.dart';

class FakePostsProvider extends AbstractPostsProvider {
  @override
  Future<List<Post>> fetchPostsList() async {
    List<Post> postsList = [];
    var randomBool = Random().nextBool();
    await Future.delayed(const Duration(seconds: 1));
    if (randomBool) {
      postsList = mockPostsList;
      return postsList;
    } else {
      throw Exception("Failed to fetch data.");
    }
  }
}
