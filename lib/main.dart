import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Quiz App',
    home: Scaffold(
      body: Gradientcontainer(Color.fromARGB(255, 227, 162, 9), Color.fromARGB(255, 176, 255, 179)),
    ),
  ));
}
