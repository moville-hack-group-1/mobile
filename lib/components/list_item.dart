import 'package:educanacao/components/title.dart';
import 'package:flutter/material.dart';

class ListItemComponent extends StatelessWidget {
  final String title;
  final String subtitle;
  final double titleSize;
  final Function onClick;

  ListItemComponent(this.title,
      {this.subtitle, this.titleSize, @required this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick();
      },
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TitleComponent(title, size: titleSize),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: subtitle != null
                        ? Text(
                            subtitle,
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          )
                        : null,
                  ),
                ],
              ),
            ),
            Image.asset('images/ic_arrow.png')
          ],
        ),
      ),
    );
  }
}
