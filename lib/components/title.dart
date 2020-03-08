import 'package:flutter/material.dart';

class TitleComponent extends StatelessWidget {
  final String title;

  TitleComponent(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
