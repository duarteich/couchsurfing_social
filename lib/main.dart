import 'package:couchsurfing_social/providers/post_provider.dart';
import 'package:couchsurfing_social/screens/post_detail_screen.dart';
import 'package:couchsurfing_social/screens/post_feed_screen.dart';
import 'package:couchsurfing_social/screens/user_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/user_provider.dart';

void main() {
  runApp(const CouchSocialApp());
}

class CouchSocialApp extends StatelessWidget {
  const CouchSocialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => PostProvider()),
      ],
      child: MaterialApp(
        title: 'Couch Social',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => PostFeedScreen(),
          '/profile': (context) => const UserProfileScreen(),
          'post-detail': (context) => PostDetailScreen(),
        },
      ),
    );
  }
}
