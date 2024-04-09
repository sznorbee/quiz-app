import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map(
                (data) => Row(
                  children: [
                    Text(((data['question_index'] as int) + 1).toString()),
                    Expanded(
                      child: Column(
                        children: [
                          Text(data['question'] as String),
                          const SizedBox(height: 5),
                          Text('Correct Answer: ${data['correctAnswer']}'),
                          const SizedBox(height: 5),
                          Text('Your Answer: ${data['selectedAnswer']}'),
                        ],
                      ),
                    )
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}