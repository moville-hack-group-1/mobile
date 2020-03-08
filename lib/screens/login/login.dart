import 'package:educanacao/components/toast.dart';
import 'package:educanacao/database/dao/user_dao.dart';
import 'package:educanacao/models/user.dart';
import 'package:educanacao/screens/login/recover_login.dart';
import 'package:educanacao/screens/welcome.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final UserDAO _dao = UserDAO();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(children: <Widget>[
          TextField(
              controller: _nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Nome'),
              style: TextStyle(fontSize: 16.0)),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Senha'),
                style: TextStyle(fontSize: 16.0)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: SizedBox(
              height: 48.0,
              width: double.maxFinite,
              child: RaisedButton(
                child: Text('ENTRAR'),
                onPressed: () {
                  final String name = _nameController.text;
                  final String password = _passwordController.text;
                  if (name.isNotEmpty && password.isNotEmpty) {
                    final User user = User(0, name, password);
                    _dao.save(user).then((id) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => Welcome(name)));
                    });
                  } else {
                    showToast("Digite os campos corretamente!");
                  }
                },
              ),
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RecoverLogin()));
            },
            child: Text(
              'Esqueci minha senha',
              style: TextStyle(fontSize: 12.0),
            ),
          ),
        ]),
      ),
    );
  }
}
