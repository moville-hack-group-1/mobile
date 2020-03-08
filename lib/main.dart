import 'package:educanacao/database/dao/user_dao.dart';
import 'package:educanacao/screens/login/login.dart';
import 'package:educanacao/screens/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final UserDAO _userDAO = UserDAO();
  _userDAO.findAll().then((users) {
    runApp(new MaterialApp(
      home: users.isEmpty ? EducaNacaoApp() : Welcome(users.first.name),
    ));
  });
}

class EducaNacaoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.green[900],
          accentColor: Colors.blueAccent[700],
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[700],
            textTheme: ButtonTextTheme.primary,
          )),
      home: Login(),
    );
  }
}
