import 'package:flutter/material.dart';

import '../models/user.dart';

class UserProvider with ChangeNotifier {
  final User _currentUser = User(
    id: '1',
    name: 'Tim Cook',
    photoURL: 'https://example.com/timcook.jpg',
    friendIds: ['2', '3'],
  );

  User get currentUser => _currentUser;
}
