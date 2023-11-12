import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/quiz.png',
                  width: 300,
                ),
                const SizedBox(height: 200),
                const Text(
                  'Learn Flutter the fun Way',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: startQuiz,
                  icon: const Icon(Icons.arrow_right),
                  label: const Text('Start the Quiz'),
                )
              ],
            ),
          ),
        ));
  }
}
