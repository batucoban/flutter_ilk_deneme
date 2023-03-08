

import 'dart:io';

import 'package:dio/dio.dart';

import 'post_model.dart';

class PostService {

  final Dio _dio;
  PostService():_dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  Future<bool> addItemToService(PostModel postModel) async {

    try {
      final response = await _dio.post(_PostServicePaths.posts.name, data: postModel);

      return response.statusCode == HttpStatus.created;
    } catch (_) {
      
    }
    return false;
  }

  Future<List<PostModel>?> fetchPostItemsAdvence() async {

    try {
      final response = await _dio.get(_PostServicePaths.posts.name);

      if (response.statusCode == HttpStatus.ok){
        final datas = response.data;

        if (datas is List) {
          return datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }
    } catch (_) {
      print('a');
    }
    return null;
  }
}

enum _PostServicePaths{
  posts, comments
}