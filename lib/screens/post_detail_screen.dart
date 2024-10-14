import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../providers/post_provider.dart';
import '../providers/user_provider.dart';

class PostDetailScreen extends StatelessWidget {
  PostDetailScreen({super.key});
  final dateFormat = DateFormat('dd/MM/yyyy, hh:mm a');

  @override
  Widget build(BuildContext context) {
    final postId = ModalRoute.of(context)!.settings.arguments as String;
    final post = Provider.of<PostProvider>(context).getPostById(postId);
    final author = Provider.of<UserProvider>(context).getUserById(post.userId);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Detail'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
                backgroundImage: NetworkImage(author.photoURL), radius: 50),
            const SizedBox(height: 16),
            Text(author.name, style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            Text('Posted on: ${dateFormat.format(post.timestamp)}'),
            const SizedBox(height: 16),
            Text(post.content),
          ],
        ),
      ),
    );
  }
}
