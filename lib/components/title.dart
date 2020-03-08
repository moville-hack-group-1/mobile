import 'package:flutter/material.dart';

class TitleComponent extends StatelessWidget {
  final String title;
  final double size;
  final Color color;

  TitleComponent(this.title, {this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color != null ? color : null,
        fontSize: size != null ? size :  24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
