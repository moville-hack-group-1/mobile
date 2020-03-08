import 'package:educanacao/components/title.dart';
import 'package:flutter/material.dart';

class ListItemComponent extends StatelessWidget {
  final String title;
  final String subtitle;
  final double titleSize;
  final Color color;
  final Color titleColor;

  final Function onClick;

  ListItemComponent(this.title,
      {this.subtitle,
      this.titleSize,
      this.color,
      this.titleColor,
      @required this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onClick != null) onClick();
      },
      child: Container(
        color: Colors.grey[200],
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Container(
                    height: 120.0,
                    color: color != null ? color : null,
                    child: new Text(
                      " ",
                      style: new TextStyle(color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TitleComponent(title,
                              size: titleSize, color: titleColor),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: subtitle != null
                                ? Text(
                                    subtitle,
                                    style: TextStyle(
                                      color: titleColor != null ? titleColor : null,
                                      fontSize: 14.0,
                                    ),
                                  )
                                : null,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'images/ic_arrow.png',
                color: color,
              ),
            )
          ],
        ),
      ),
    );
  }
}
