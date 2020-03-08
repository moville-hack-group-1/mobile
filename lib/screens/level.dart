import 'package:educanacao/components/list_item.dart';
import 'package:educanacao/components/title.dart';
import 'package:educanacao/screens/objective.dart';
import 'package:flutter/material.dart';

class Level extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Escolha do nível'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TitleComponent(
                'Primeiro precisamos saber o nível que você gostaria de estudar'),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListItemComponent(
                  'Ensino Fundamental',
                  '6 ao 9 ano',
                  onClick: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Objective()));
                  },
                ),
                Divider(),
                ListItemComponent(
                  'Ensino Médio',
                  '1 ao 3 ano',
                  onClick: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Objective()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
