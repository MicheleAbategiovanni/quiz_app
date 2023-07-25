import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_start.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.deepPurpleAccent,
          ),
          child: const QuizStart(),
        ),
      ),
    ),
  );
}
