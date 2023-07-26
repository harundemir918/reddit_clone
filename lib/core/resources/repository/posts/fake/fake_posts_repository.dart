/*
Author: Harun Demir
Date: 25.07.2023
*/

import '../../../../models/post_model.dart';
import 'fake_posts_provider.dart';

class FakePostsRepository {
  final FakePostsProvider _postsProvider = FakePostsProvider();

  Future<List<Post>> fetchPostsList() => _postsProvider.fetchPostsList();
}
