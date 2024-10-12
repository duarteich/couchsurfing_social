import 'package:flutter/material.dart';
import '../models/post.dart';

class PostProvider with ChangeNotifier {
  final List<Post> _posts = [
    Post(
        id: '1',
        userId: '2',
        content: 'First post of user 2',
        timestamp: DateTime.now()),
    Post(
        id: '3',
        userId: '3',
        content: 'Another post of other friend',
        timestamp: DateTime.now().subtract(const Duration(hours: 1))),
  ];

  List<Post> get posts => _posts;

  Post getPostById(String id) => _posts.firstWhere((post) => post.id == id);
}
