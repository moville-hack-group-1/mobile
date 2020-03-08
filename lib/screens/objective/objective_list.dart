import 'package:educanacao/components/list_item.dart';
import 'package:educanacao/components/title.dart';
import 'package:educanacao/screens/objective/selected_objective_info.dart';
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
                  subtitle: 'Exame para jovens e adultos',
                  color: Colors.green,
                  onClick: () {
                    openSelectedObjectiveInfo(context);
                  },
                ),
                Divider(),
                ListItemComponent(
                  'Ensino Geral',
                  subtitle: 'Exame para ingressar nas Universidades',
                  color: Colors.blue,
                  titleColor: Colors.grey[500],
                  onClick: null,
                ),
                Divider(),
                ListItemComponent(
                  'ENEM',
                  subtitle: 'Exame para ingressar nas Universidades',
                  color: Colors.red,
                  titleColor: Colors.grey[500],
                  onClick: null,
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
