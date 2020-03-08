import 'package:flutter/material.dart';

class TitleComponent extends StatelessWidget {
  final String title;
  final double size;

  TitleComponent(this.title, {this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: size != null ? size :  24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
