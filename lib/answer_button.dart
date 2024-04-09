import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerButtonLabel, this.onTap, {super.key});

  final String answerButtonLabel;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        backgroundColor: const Color.fromARGB(255, 32, 17, 199),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(answerButtonLabel),
    );
  }
}
