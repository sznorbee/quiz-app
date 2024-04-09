import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.selectedAnswers, this.resetQuiz, {super.key});

  final void Function() resetQuiz;
  final List<String> selectedAnswers;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correctAnswer': questions[i].answers[0],
        'selectedAnswer': selectedAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numberOfQuestions = questions.length;
    final numberOfCorrectAnswers = summaryData
        .where((data) => data['correctAnswer'] == data['selectedAnswer'])
        .length;

    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Congratulations!',
                  style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 13, 13, 13),
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              const SizedBox(height: 20),
              Text(
                  'You answered $numberOfCorrectAnswers out of $numberOfQuestions questions correctly.',
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                  textAlign: TextAlign.center),
              const SizedBox(height: 20),
              QuestionsSummary(summaryData),
              const SizedBox(height: 20),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 10, 9, 9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                onPressed: resetQuiz,
                label: const Text('Restart Quiz',
                    style: TextStyle(color: Color.fromARGB(255, 11, 11, 11))),
                icon: const Icon(Icons.replay,
                    color: Color.fromARGB(255, 6, 235, 78)),
              ),
            ],
          ),
        ));
  }
}
