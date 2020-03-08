import 'package:educanacao/components/list_item.dart';
import 'package:educanacao/components/title.dart';
import 'package:flutter/material.dart';

class Catch extends StatelessWidget {
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
              children: <Widget>[
                TitleComponent('Você escolheu Matemática e suas Tecnologias'),
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
          Expanded(
            child: ListView(
              children: <Widget>[
                ListItemComponent(
                  '1. Compreender a ciência',
                  titleSize: 14.0,
                  onClick: () {},
                ),
                Divider(),
                ListItemComponent(
                  '2. Compreender conhecimentos',
                  titleSize: 14.0,
                  onClick: () {},
                ),
                Divider(),
                ListItemComponent(
                  '3. Compreender a natureza',
                  titleSize: 14.0,
                  onClick: () {},
                ),
                Divider(),
                ListItemComponent(
                  '4. Compreender a saúde',
                  titleSize: 14.0,
                  onClick: () {},
                ),
                Divider(),
                ListItemComponent(
                  '5. Compreender o próprio corpo',
                  titleSize: 14.0,
                  onClick: () {},
                ),
                Divider(),
                ListItemComponent(
                  '6. Aplicar conhecimentos de ciência',
                  titleSize: 14.0,
                  onClick: () {},
                ),
                Divider(),
                ListItemComponent(
                  '7. Compreender o Sistema Solar',
                  titleSize: 14.0,
                  onClick: () {},
                ),
                Divider(),
                ListItemComponent(
                  '8. Avaliar a disponibilidade',
                  titleSize: 14.0,
                  onClick: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
