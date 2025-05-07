// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostState {
  List<PostModel> get post;
  PostStatus get status;

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostStateCopyWith<PostState> get copyWith =>
      _$PostStateCopyWithImpl<PostState>(this as PostState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostState &&
            const DeepCollectionEquality().equals(other.post, post) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(post), status);

  @override
  String toString() {
    return 'PostState(post: $post, status: $status)';
  }
}

/// @nodoc
abstract mixin class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) _then) =
      _$PostStateCopyWithImpl;
  @useResult
  $Res call({List<PostModel> post, PostStatus status});
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res> implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._self, this._then);

  final PostState _self;
  final $Res Function(PostState) _then;

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? status = null,
  }) {
    return _then(_self.copyWith(
      post: null == post
          ? _self.post
          : post // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as PostStatus,
    ));
  }
}

/// @nodoc

class _PostState implements PostState {
  const _PostState({required final List<PostModel> post, required this.status})
      : _post = post;

  final List<PostModel> _post;
  @override
  List<PostModel> get post {
    if (_post is EqualUnmodifiableListView) return _post;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_post);
  }

  @override
  final PostStatus status;

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostStateCopyWith<_PostState> get copyWith =>
      __$PostStateCopyWithImpl<_PostState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostState &&
            const DeepCollectionEquality().equals(other._post, _post) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_post), status);

  @override
  String toString() {
    return 'PostState(post: $post, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$PostStateCopyWith<$Res>
    implements $PostStateCopyWith<$Res> {
  factory _$PostStateCopyWith(
          _PostState value, $Res Function(_PostState) _then) =
      __$PostStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<PostModel> post, PostStatus status});
}

/// @nodoc
class __$PostStateCopyWithImpl<$Res> implements _$PostStateCopyWith<$Res> {
  __$PostStateCopyWithImpl(this._self, this._then);

  final _PostState _self;
  final $Res Function(_PostState) _then;

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? post = null,
    Object? status = null,
  }) {
    return _then(_PostState(
      post: null == post
          ? _self._post
          : post // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as PostStatus,
    ));
  }
}

// dart format on
