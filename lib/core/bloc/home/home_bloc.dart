import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/post_model.dart';
import '../../resources/repository/posts/posts_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final PostsRepository postsRepository;
  List<Post> postsList = [];

  HomeBloc(this.postsRepository) : super(HomeInitial()) {
    on<FetchPostsEvent>((event, emit) async {
      try {
        emit(HomeLoading());
        postsList = await postsRepository.fetchPostsList();
        emit(HomeLoaded(postsList));
      } catch (e) {
        emit(HomeError(e.toString()));
      }
    });
  }
}
