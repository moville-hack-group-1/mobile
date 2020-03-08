import 'package:educanacao/components/title.dart';
import 'package:educanacao/screens/level.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  final String userName;

  Welcome(this.userName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boas-vindas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          TitleComponent('Oi $userName!\nEstamos felizes em te ver por aqui!'),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Text(
              'Nosso App foi feito para jovens e adultos que não tiveram a oportunidade de concluir os estudos na idade escolar adequada.\n\nÉ possível fazer Download e ter acesso ao conteúdo também Offline.\nSe preferir, escute o áudio de cada aula.',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 64.0),
            child: TitleComponent(
              'Vamos começar?',
              size: 20.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: SizedBox(
              height: 48.0,
              width: double.maxFinite,
              child: RaisedButton(
                child: Text('COMEÇAR'),
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
