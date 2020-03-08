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
                  onPressed: () {
                    // TODO Play the song
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Column(
                    children: <Widget>[
                      TitleComponent(
                        'Aspectos de ordem social, econômica, política e cultural.',
                        size: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.network(
                          'https://i.picsum.photos/id/99/200/300.jpg',
                          height: 200.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                            'Aparelhos elétricos podem ser de muitos tipos, exercendo funções diferentes, por exemplo: calor, limpeza, roupa lavada, notícias, música, refrigeração etc. Podemos reescrever essas coisas de uma outra forma, procurando o que há em comum, nas funções desses aparelhos. Por exemplo, uma batedeira, um ventilador e uma furadeira todos eles, apesar de estarem executando tarefas diferentes, produzem algum movimento. Nesses três exemplos, todos possuem motores elétricos. Esse tipo de motor transforma a energia elétrica em movimento, que é uma outra forma de energia, que chamamos de energia mecânica. Assim, em todos esses aparelhos, a energia elétrica está se transformando em alguma outra forma de energia. Ao utilizá-los, estamos “consumindo” alguma energia, ou seja, transformando-a em movimento, calor, luz ou som, por exemplo.'),
                      )
                    ],
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
