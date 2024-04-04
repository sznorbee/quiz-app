import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 249, 249),
          ),
          const SizedBox(height: 40),
          const Text('Learn Flutter the Fun Way!',
              style: TextStyle(fontSize: 26, color: Colors.white)),
          const SizedBox(height: 40),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5))),
            onPressed: startQuiz,
            label:
                const Text('Start Quiz', style: TextStyle(color: Colors.white)),
            icon: const Icon(Icons.play_arrow, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
