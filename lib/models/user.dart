class User {
  final int id;
  final String name;
  final String bio;
  final int balance;

  User({this.id, this.name, this.bio, this.balance});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      bio: json['bio'],
      balance: json['balance'],
    );
  }
}
