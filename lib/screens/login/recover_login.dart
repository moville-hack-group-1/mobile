import 'package:educanacao/components/toast.dart';
import 'package:flutter/material.dart';

class RecoverLogin extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _newPasswordConfirmController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Redefina sua senha'),
      ),
      body: Container(
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.jpeg'), fit: BoxFit.fill),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Image.asset('images/logo.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 64.0),
                child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(labelText: 'Nome'),
                    style: TextStyle(fontSize: 16.0)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                    controller: _newPasswordController,
                    obscureText: true,
                    decoration:
                        InputDecoration(labelText: 'Digite sua senha nova'),
                    style: TextStyle(fontSize: 16.0)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                    controller: _newPasswordConfirmController,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Digite novamente sua senha nova'),
                    style: TextStyle(fontSize: 16.0)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: SizedBox(
                  height: 48.0,
                  width: 200.0,
                  child: OutlineButton(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    child: Text('PRONTO'),
                    onPressed: () {
                      final String newPassword = _newPasswordController.text;
                      final String newPasswordConfirm =
                          _newPasswordConfirmController.text;
                      if (newPassword.isNotEmpty &&
                          newPasswordConfirm.isNotEmpty) {
                        Navigator.pop(context);
                      } else {
                        showToast("Digite os campos corretamente!");
                      }
                    },
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
