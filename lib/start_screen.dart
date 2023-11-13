import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                const SizedBox(height: 100),
                Text(
                  'Learn Flutter the fun Way',
                  style: GoogleFonts.lato(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 3, 37, 65)),
                ),
                const SizedBox(height: 100),
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
