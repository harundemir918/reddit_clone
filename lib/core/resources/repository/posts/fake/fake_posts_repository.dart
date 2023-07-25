/*
Author: Harun Demir
Date: 25.07.2023
*/

import '../../../../models/post_model.dart';
import '../../abstract/abstract_posts_repository.dart';
import 'fake_posts_provider.dart';

class FakePostsRepository extends AbstractPostsRepository {
  final FakePostsProvider _postsProvider = FakePostsProvider();

  @override
  Future<List<Post>> fetchPostsList() => _postsProvider.fetchPostsList();
}
