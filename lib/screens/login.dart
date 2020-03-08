import 'package:educanacao/components/toast.dart';
import 'package:educanacao/screens/welcome.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Welcome()));
//                    _dao.save(newContact).then((id) => Navigator.pop(context));
                  } else {
                    showToast("Digite os campos corretamente!");
                  }
                },
              ),
            ),
          )
        ]),
      ),
    );
  }
}
