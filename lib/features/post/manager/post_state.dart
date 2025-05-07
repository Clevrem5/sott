import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_repository/data/models/post_model.dart';

part 'post_state.freezed.dart';

enum PostStatus { idle, loading, error }

@freezed
abstract class PostState with _$PostState {
  const factory PostState({
    required List<PostModel> post,
    required PostStatus status,
  }) = _PostState;

  factory PostState.initial() {
    return PostState(
      post: [],
      status: PostStatus.loading,
    );
  }
}
