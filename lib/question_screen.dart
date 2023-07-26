import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Question',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            title: 'Answer 1',
            onTap: () {},
          ),
          AnswerButton(
            title: 'Answer 2',
            onTap: () {},
          ),
          AnswerButton(
            title: 'Answer 3',
            onTap: () {},
          ),
          AnswerButton(
            title: 'Answer 4',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
