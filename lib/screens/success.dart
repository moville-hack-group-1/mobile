import 'package:educanacao/components/title.dart';
import 'package:flutter/material.dart';

import 'level.dart';

class Success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sucesso'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: <Widget>[
          TitleComponent(
              'Voce concluiu todos os seus estudos nas materias especificas para a prova'),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Text(
              'Texto de conclusão!!!',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 64.0),
            child: SizedBox(
              height: 48.0,
              width: double.maxFinite,
              child: RaisedButton(
                child: Text('Facebook'),
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
