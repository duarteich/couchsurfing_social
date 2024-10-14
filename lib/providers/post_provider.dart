import 'package:flutter/material.dart';
import '../models/post.dart';

class PostProvider with ChangeNotifier {
  final List<Post> _posts = [
    Post(
        id: '1',
        userId: '3',
        userName: 'Katherine Adams',
        content: 'We are ready to next iOS release.',
        timestamp: DateTime.now()),
    Post(
        id: '3',
        userId: '2',
        userName: 'Craig Federighi',
        content: 'Excited to announce new iPhone 16 Ultra',
        timestamp: DateTime.now().subtract(const Duration(hours: 1))),
  ];

  List<Post> get posts => _posts;

  Post getPostById(String id) => _posts.firstWhere((post) => post.id == id);
}
