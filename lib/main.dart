import 'package:educanacao/http/webclient.dart';
import 'package:educanacao/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(MyApp());
  get(BASE_URL).then((response) => print(response.body));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}
