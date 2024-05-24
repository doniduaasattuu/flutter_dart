import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      // theme: ThemeData(useMaterial3: true),
      theme: ThemeData.dark(useMaterial3: true),
      home: const Expenses(),
    ),
  );
}
