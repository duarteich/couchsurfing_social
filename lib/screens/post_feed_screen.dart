import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/post_provider.dart';
import '../models/post.dart';

import 'package:intl/intl.dart';

class PostFeedScreen extends StatelessWidget {
  PostFeedScreen({super.key});

  final dateFormat = DateFormat('dd/MM/yyyy, hh:mm a');

  @override
  Widget build(BuildContext context) {
    final posts = Provider.of<PostProvider>(context).posts;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.of(context).pushNamed('/profile');
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          Post post = posts[index];
          return ListTile(
            title: Row(
              children: [
                Text(post.userName,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(width: 8),
                Expanded(child: Text(dateFormat.format(post.timestamp))),
              ],
            ),
            subtitle: Text(post.content),
            onTap: () {
              Navigator.of(context)
                  .pushNamed('post-detail', arguments: post.id);
            },
          );
        },
      ),
    );
  }
}
