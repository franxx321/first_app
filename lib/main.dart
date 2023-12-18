import 'package:flutter/material.dart';
import 'package:first_app/ContainerWidget.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: ContainerWidget(
          beginColor: Color.fromARGB(255, 44, 0, 133),
          endColor: Color.fromARGB(255, 59, 0, 161),
        ),
      ),
    ),
  );
}
