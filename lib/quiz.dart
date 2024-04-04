import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenWidget = activeScreen == 'start-screen'
        ? StartScreen(switchScreen)
        : const QuestionScreen();

    return MaterialApp(
        title: 'Quiz App',
        home: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 227, 162, 9),
                    Color.fromARGB(255, 176, 255, 179)
                  ],
                ),
              ),
              child: screenWidget),
        ));
  }
}
