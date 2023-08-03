import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/quiz_start.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? screenWidget;

  // @override
  // void initState() {
  //   activeScreen = QuizStart(switchScreen);
  //   super.initState();
  // }

  var activeScreen = 'start-screen';
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      // activeScreen = const QuestionScreen();
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
    //Controlliamo se effettivamente stiamo aggiungendo le risposte nell'array
    // print(selectedAnswers);
  }

  void onRestartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'question-screen';
    });
  }

  void onHomeQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    screenWidget = QuizStart(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectedAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        choseAnswers: selectedAnswers,
        onRestartQuiz: onRestartQuiz,
        onHomeQuiz: onHomeQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.deepPurpleAccent,
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
