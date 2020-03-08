import 'package:educanacao/components/title.dart';
import 'package:educanacao/screens/level.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boas-vindas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: <Widget>[
          TitleComponent('Oi Maria!\nEstamos felizes em te ver por aqui!'),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Text(
              'The quick brown fox jumps over the lazy dogThe quick brown fox jumps over the lazy dogThe quick brown fox jumps over the lazy dogThe quick brown fox jumps\n\n'
              'over the lazy dogThe quick brown fox jumps over the lazy dogThe quick brown fox jumps over the lazy dogThe quick brown fox jumps over the lazy dogThe quick brown fox jumps over the lazy dog\n\n\n\n'
              'Vamos começar?',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 64.0),
            child: SizedBox(
              height: 48.0,
              width: double.maxFinite,
              child: RaisedButton(
                child: Text('COMECAR'),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Level()));
                },
              ),
            ),
          )
        ]),
      ),
    );
  }
}
