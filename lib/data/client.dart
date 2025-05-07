import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio = Dio(BaseOptions(
      baseUrl:
          "http://192.168.10.214:8888/api/v1")); //"https://jsonplaceholder.typicode.com"

  Future<List<dynamic>> fetchPost() async {
    final response = await dio.get('/posts');
    if (response.statusCode == 200) {
      return response.data as List<dynamic>;
    }
    throw Exception("Xato");
  }

  Future<List<dynamic>> fetchHome() async {
    final response = await dio.get('/real-estates');
    if (response.statusCode == 200) {
      return response.data as List<dynamic>;
    }
    throw Exception("Xato");
  }
}
