import 'package:hive_repository/data/client.dart';
import 'package:hive_repository/data/models/post_model.dart';

class PostRepository {
  final ApiClient client;

  PostRepository({required this.client});

  List<PostModel> post = [];

  Future<List<PostModel>> fetchPost() async {
    final rawHome = await client.fetchPost();
    post = rawHome.map((e) => PostModel.fromJson(e)).toList();
    return post;
  }
}
