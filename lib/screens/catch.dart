import 'package:educanacao/components/list_item.dart';
import 'package:educanacao/components/title.dart';
import 'package:educanacao/models/trail.dart';
import 'package:educanacao/screens/topic_detail.dart';
import 'package:flutter/material.dart';

class Catch extends StatelessWidget {
  final String _competenceName;
  final Topic _topic;

  Catch(this._competenceName, this._topic);

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
                TitleComponent('Você escolheu $_competenceName'),
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
            child: ListView.builder(
              itemBuilder: (context, index) {
                final Content content = _topic.contents[index];
                return _CatchItem(
                    _competenceName, content.title, _topic.color, content);
              },
              itemCount: _topic.contents.length,
            ),
          ),
        ],
      ),
    );
  }
}

class _CatchItem extends StatelessWidget {
  final String nameCompetence;
  final String _name;
  final Color _color;
  final Content _content;

  _CatchItem(this.nameCompetence, this._name, this._color, this._content);

  @override
  Widget build(BuildContext context) {
    return ListItemComponent(
      _name,
      color: _color,
      titleSize: 14.0,
      onClick: () {
        openCatchScreen(context, nameCompetence, _content);
      },
    );
  }

  void openCatchScreen(
      BuildContext context, String nameCompetence, Content content) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => TopicDetail(nameCompetence, content)));
  }
}
