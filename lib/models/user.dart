class User {
  final int id;
  final String name;
  final String password;

  User(this.id, this.name, this.password);

  @override
  String toString() {
    return 'User{id: $id, name: $name}';
  }

  Map<String, dynamic> tojson() => {'id': id, 'name': name};
}
