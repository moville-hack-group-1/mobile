import 'package:educanacao/components/list_item.dart';
import 'package:educanacao/components/toast.dart';
import 'package:educanacao/models/trail.dart';
import 'package:educanacao/screens/catch.dart';
import 'package:flutter/material.dart';

class SpecificList extends StatelessWidget {
  final List<Competence> competences;

  SpecificList(this.competences);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Específicas'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Competence competence = competences[index];
          return _CompetenceItem(competence);
        },
        itemCount: competences.length,
      ),
    );
  }
}

class _CompetenceItem extends StatelessWidget {
  final Competence competence;

  _CompetenceItem(this.competence);

  @override
  Widget build(BuildContext context) {
    return ListItemComponent(
      competence.name,
      color: competence.color,
      titleColor: competence.titleColor,
      onClick: () {
        openCatchScreen(context, competence);
      },
    );
  }

  void openCatchScreen(BuildContext context, Competence competence) {
    if (competence.topics.isEmpty) {
      showToast('Não há tópicos disponíveis para essa competência');
    } else {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>
              Catch(competence.name, competence.topics.first)));
    }
  }
}
