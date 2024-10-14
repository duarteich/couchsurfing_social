import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_provider.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
                backgroundImage: NetworkImage(user.photoURL), radius: 50),
            const SizedBox(height: 16),
            Text(user.name, style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            Text('Friends: ${user.friendIds.length}',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            Text(user.bio),
          ],
        ),
      ),
    );
  }
}
