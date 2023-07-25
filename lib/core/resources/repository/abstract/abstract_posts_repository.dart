/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:reddit_clone/core/models/post_model.dart';

abstract class AbstractPostsRepository {
  Future<List<Post>> fetchPostsList();
}
