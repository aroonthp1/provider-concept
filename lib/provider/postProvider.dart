import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_samples/model/posts.dart';
import 'package:flutter_samples/service/post_service.dart';



final postProvider = StateNotifierProvider<PostProvider, List<Posts>>((ref) => PostProvider());

class PostProvider extends StateNotifier<List<Posts>>{
  PostProvider([List<Posts> state]) : super(state ?? []){
    

    getData();
  }

  Future<List<Posts>> getData() async {
    final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    final data = jsonDecode(response.body);
    final listData = (data as List).map((e) => Posts.fromJson(e)).toList();
    state = [...state, ...listData];
  }


}