import 'package:bloc/bloc.dart';
import 'package:hive_repository/data/repositories/post/post_repository.dart';
import 'package:hive_repository/features/post/manager/post_state.dart';

part 'post_event.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostRepository _repository;

   PostBloc({required PostRepository repo})
      : _repository = repo,
        super(PostState.initial()) {
    on<PostLoad>(_load);
  }

  Future<void> _load(PostLoad event, Emitter<PostState> emit) async {
    final post = await _repository.fetchPost();
    emit(state.copyWith(post: post, status: PostStatus.idle));
  }
}
