/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:reddit_clone/core/models/post_model.dart';

abstract class AbstractPostsProvider {
  Future<List<Post>> fetchPostsList();
}
