import 'package:educanacao/components/list_item.dart';
import 'package:educanacao/screens/catch.dart';
import 'package:flutter/material.dart';

class SpecificList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Específicas'),
      ),
      body: ListView(
        children: <Widget>[
          ListItemComponent(
            'Linguagens, Códigos e suas Tecnologias',
            color: Colors.green,
            onClick: () {
              openCatchScreen(context);
            },
          ),
          Divider(),
          ListItemComponent(
            'Matemática e suas Tecnologias',
            color: Colors.red,
            onClick: () {
              openCatchScreen(context);
            },
          ),
          Divider(),
          ListItemComponent(
            'Ciências Humanas e suas Tecnologias',
            color: Colors.blue,
            onClick: () {
              openCatchScreen(context);
            },
          ),
          Divider(),
          ListItemComponent(
            'Ciências da Natureza e suas Tecnologias',
            color: Colors.yellow,
            onClick: () {
              openCatchScreen(context);
            },
          ),
        ],
      ),
    );
  }

  void openCatchScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Catch()));
  }
}
