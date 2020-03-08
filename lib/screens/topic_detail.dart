import 'package:educanacao/components/title.dart';
import 'package:educanacao/models/trail.dart';
import 'package:flutter/material.dart';

const String FILE_URL = 'https://educanacao.pagekite.me';

class TopicDetail extends StatelessWidget {
  final String _nameCompetence;
  final Content _content;

  TopicDetail(this._nameCompetence, this._content);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_nameCompetence),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TitleComponent(_content.title),
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
                        child: FadeInImage.assetNetwork(
                          height: 200.0,
                          placeholder: 'images/loading.gif',
                          image: FILE_URL + _content.image,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(_content.text),
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
