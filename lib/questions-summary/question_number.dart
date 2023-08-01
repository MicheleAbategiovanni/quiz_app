import 'package:flutter/material.dart';

class QuestionNumber extends StatelessWidget {
  QuestionNumber({
    super.key,
    required this.question,
    required this.isCorrectAnswer,
  });

  final int question;
  final Function() isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final number = question + 1;

    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isCorrectAnswer(),
        border: Border.all(width: 2),
      ),
      child: Text(
        number.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
