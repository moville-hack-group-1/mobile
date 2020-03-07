import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

const DB_NAME = 'educanacao.db';
const VERSION = 1;

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), DB_NAME);
  return openDatabase(path, onCreate: (db, version) {
//      db.execute(ContactDAO.tableSQL);
  }, version: VERSION);
}
