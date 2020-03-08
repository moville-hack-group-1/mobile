import 'package:educanacao/database/app_database.dart';
import 'package:educanacao/models/user.dart';
import 'package:sqflite/sqflite.dart';

class UserDAO {
  static const USER_TABLE = 'user';
  static const USER_ID = 'id';
  static const USER_NAME = 'name';
  static const USER_PASSWORD = 'password';

  static const String tableSQL = 'CREATE TABLE $USER_TABLE('
      '$USER_ID INTEGER PRIMARY KEY, '
      '$USER_NAME TEXT, '
      '$USER_PASSWORD TEXT)';

  Future<int> save(User user) async {
    final Database db = await getDatabase();
    return db.insert(USER_TABLE, _toMap(user));
  }

  Map<String, dynamic> _toMap(User user) {
    final Map<String, dynamic> contactMap = Map();
    contactMap[USER_NAME] = user.name;
    contactMap[USER_PASSWORD] = user.password;
    return contactMap;
  }

  Future<List<User>> findAll() async {
    final Database db = await getDatabase();
    return _toList(await db.query(USER_TABLE));
  }

  List<User> _toList(List<Map<String, dynamic>> result) {
    final List<User> users = List();
    for (Map<String, dynamic> row in result) {
      final User contact = User(
        row[USER_ID],
        row[USER_NAME],
        row[USER_PASSWORD],
      );
      users.add(contact);
    }
    return users;
  }
}
