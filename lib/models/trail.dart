import 'package:flutter/material.dart';

class Competence {
  final String name;
  final List<Topic> topics;
  final Color color;
  final Color titleColor;

  Competence(this.name, this.topics, this.color, {this.titleColor});
}

class Topic {
  final String name;
  final List<Content> contents;
  final Color color;

  Topic(this.name, this.contents, this.color);
}

class Content {
  final String title;
  final String text;
  final String image;
  final String alt;
  final String audio;
  final String pdf;

  Content(this.title, this.text, this.image, this.alt, this.audio, this.pdf);
}
