import 'package:flutter/material.dart';

import '../models/user.dart';

class UserProvider with ChangeNotifier {
  final List<User> _users = [
    User(
        id: '1',
        name: 'Tim Cook',
        bio:
            "CEO of Apple since 2011, has driven the success of products like the iPhone and Apple Watch while championing privacy, sustainability, and social justice. Previously, he optimized Apple's operations as COO and held leadership roles at IBM and Compaq. Cook is also a strong advocate for LGBTQ+ rights and diversity in tech.",
        photoURL: 'https://pbs.twimg.com/profile_images/1535420431766671360/Pwq-1eJc_400x400.jpg',
        friendIds: ['2', '3']),
    User(
        id: '2',
        name: 'Craig Federighi',
        bio:
            "Apple’s Senior Vice President of Software Engineering, oversees the development of iOS, iPadOS, macOS, and more. Leading the software strategy for Apple's platforms, he's known for his engaging product presentations and focus on innovation, privacy, and seamless user experiences. Federighi joined Apple in 2009 and previously held leadership roles at NeXT and Ariba.",
        photoURL: 'https://pbs.twimg.com/profile_images/1545003245818351616/nASGi-uG_400x400.jpg',
        friendIds: ['1', '3']),
    User(
        id: '3',
        name: 'Katherine Adams',
        bio:
            "Apple’s Senior Vice President and General Counsel, oversees the company’s legal matters, including corporate governance, intellectual property, and privacy issues. Joining Apple in 2017, she plays a key role in shaping the company’s legal and regulatory strategies. Before Apple, Adams held leadership positions at Honeywell and was a partner at Sidley Austin LLP.",
        photoURL: 'https://static.wikia.nocookie.net/ipod/images/b/b1/Katherine_Adams_2017-12.png/revision/latest?cb=20210712082114',
        friendIds: ['1', '2']),
  ];

  User get currentUser => _users[0];

  User getUserById(String id) => _users.firstWhere((user) => user.id == id);
}
