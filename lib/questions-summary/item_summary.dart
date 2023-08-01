import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/questions-summary/question_number.dart';

class ItemSummary extends StatelessWidget {
  const ItemSummary(this.data, {super.key});

  final Map<String, Object> data;

  isCorrectAnswer() {
    if (data['user_answer'] == data['correct_answer']) {
      return Color.fromARGB(255, 9, 234, 9);
    } else {
      return Color.fromARGB(255, 190, 88, 227);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionNumber(
            question: data['question_index'] as int,
            isCorrectAnswer: isCorrectAnswer),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['question'] as String,
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  data['correct_answer'] as String,
                  style: GoogleFonts.lato(
                      color: Color.fromARGB(255, 9, 234, 9),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  data['user_answer'] as String,
                  style: GoogleFonts.lato(
                      color: isCorrectAnswer(), fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
