import 'package:flutter/material.dart';
// import './gradient_container.dart';
import 'package:first_app/gradient_container.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Colors.deepPurple,
          Colors.deepOrange,
        ),
      ),
    ),
  );
}
