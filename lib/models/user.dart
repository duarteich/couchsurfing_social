class User {
  final String id;
  final String name;
  final String photoURL;
  final List<String> friendIds;

  User({
    required this.id,
    required this.name,
    required this.photoURL,
    required this.friendIds,
  });
}
