import 'package:flutter/material.dart';

class Gradientcontainer extends StatelessWidget {
  const Gradientcontainer(this.startColor, this.endColor, {super.key});

  final Color startColor;
  final Color endColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [startColor, endColor],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 300,
              ),
              const SizedBox(height: 40),
              const Text('Learn Flutter the Fun Way!',
                  style: TextStyle(fontSize: 26, color: Colors.white)),
              const SizedBox(height: 40),
              OutlinedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                              side: BorderSide(color: Colors.red)))),
                  onPressed: null,
                  child:
                      const Text('Start Quiz', style: TextStyle(color: Colors.white))),
            ],
          ),
        ));
  }
}
