import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map(
                (data) => Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(right: 25),
                          padding: const EdgeInsets.all(15),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: data['isCorrect'] == true
                                ? Colors.green
                                : Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            ((data['question_index'] as int) + 1).toString(),
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(data['question'] as String,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            const SizedBox(height: 5),
                            Text('${data['selectedAnswer']}', style: TextStyle(
                              color: data['isCorrect'] == true
                                  ? Colors.green
                                  : Colors.red,
                            ),),
                            const SizedBox(height: 5),
                            data['isCorrect'] != true ? Text('Correct Answer: ${data['correctAnswer']}') : const SizedBox(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
