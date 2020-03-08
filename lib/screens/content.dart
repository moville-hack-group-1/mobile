import 'package:educanacao/components/title.dart';
import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alcançar'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TitleComponent('1. Compreender a ciência'),
                FlatButton.icon(
                  label: Text('Baixar Material'),
                  icon: Icon(Icons.file_download),
                  onPressed: () {},
                ),
                FlatButton.icon(
                  label: Text('Ouvir Conteúdo'),
                  icon: Icon(Icons.volume_up),
                  onPressed: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    'Para alcançar seus objetivos você precisa estudar os tópicos abaixo.\n\n O fluxo você escolhe, mas lembre-se que é preciso completar o módulo.',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
