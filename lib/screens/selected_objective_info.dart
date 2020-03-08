import 'package:educanacao/components/list_item.dart';
import 'package:educanacao/components/title.dart';
import 'package:educanacao/screens/specific_list.dart';
import 'package:flutter/material.dart';

class SelectedObjectiveInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('O que é?'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TitleComponent('Você escolheu ENCCEJA'),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: Text(
                    'O Exame Nacional para Certificação de Competências de Jovens e Adultos (Encceja) é uma prova gratuita e voluntária servindo para conceder periodicamente "certificados de conclusão de ensino fundamental", e de "certificados de conclusão de ensino médio" para quem não teve oportunidade de concluir os estudos na idade escolar adequada para jovens e adultos residentes em liberdade no Brasil, no Exterior e para detentos.',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: TitleComponent('Você escolheu ENCCEJA', size: 20.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListItemComponent(
                  'Declaração Parcial de Proficiência',
                  'Para o participante que conseguir a nota mínima exigida em uma das quatro provas, ou em mais de uma, mas não em todas elas.',
                  onClick: () {
                    openSpecificList(context);
                  },
                ),
                Divider(),
                ListItemComponent(
                  'Certificação de Conclusão',
                  'Para o participante que conseguir a nota mínima exigida nas quatro provas objetivas e na redação.',
                  onClick: () {
                    openSpecificList(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void openSpecificList(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SpecificList()));
  }
}
