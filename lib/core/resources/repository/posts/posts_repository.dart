/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:reddit_clone/core/models/post_model.dart';
import 'package:reddit_clone/core/resources/repository/abstract/abstract_posts_repository.dart';
import 'package:reddit_clone/core/resources/repository/posts/posts_provider.dart';

class PostsRepository extends AbstractPostsRepository {
  final PostsProvider _postsProvider = PostsProvider();

  @override
  Future<List<Post>> fetchPostsList() => _postsProvider.fetchPostsList();
}
