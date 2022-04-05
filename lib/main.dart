import 'package:flutter/material.dart';
import 'package:meau_flutter/pages/login.dart';
import 'pages/introducao.dart';
import 'pages/login.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      // primarySwatch: Colors.blue,
    ),
    // home: Introducao(),
    routes: {
      '/': (context) => Introducao(),
      '/login': (context) => Login(),
    },
  ));
}
