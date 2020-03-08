import 'package:educanacao/components/list_item.dart';
import 'package:educanacao/components/title.dart';
import 'package:educanacao/screens/selected_objective_info.dart';
import 'package:flutter/material.dart';

class ObjectiveList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Objetivo'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TitleComponent(
                'Aqui você deve escolher o seu foco nos estudos'),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListItemComponent(
                  'ENCCEJA',
                  'Exame para jovens e adultos',
                  onClick: () {
                    openSelectedObjectiveInfo(context);
                  },
                ),
                Divider(),
                ListItemComponent(
                  'Ensino Geral',
                  'Exame para ingressar nas Universidades',
                  onClick: () {
                    openSelectedObjectiveInfo(context);
                  },
                ),
                Divider(),
                ListItemComponent(
                  'ENEM',
                  'Exame para ingressar nas Universidades',
                  onClick: () {
                    openSelectedObjectiveInfo(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void openSelectedObjectiveInfo(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SelectedObjectiveInfo()));
  }
}
