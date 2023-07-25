/*
Author: Harun Demir
Date: 25.07.2023
*/

import '../../../../models/post_model.dart';
import '../../abstract/abstract_posts_repository.dart';
import 'fake_posts_provider.dart';

class FakePostsRepository extends AbstractPostsRepository {
  final FakePostsProvider _genresProvider = FakePostsProvider();

  @override
  Future<List<Post>> fetchPostsList() => _genresProvider.fetchPostsList();
}
