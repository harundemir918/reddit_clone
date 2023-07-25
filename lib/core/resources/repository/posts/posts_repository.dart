/*
Author: Harun Demir
Date: 25.07.2023
*/

import '../../../models/post_model.dart';
import 'posts_provider.dart';

class PostsRepository {
  final PostsProvider _postsProvider = PostsProvider();

  Future<List<Post>> fetchPostsList() => _postsProvider.fetchPostsList();
}
