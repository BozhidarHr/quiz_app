import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            color: Color.fromARGB(230, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          Text("Let's begin the quiz !",
              style: GoogleFonts.lato(color: Colors.white, fontSize: 24)),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.purple,
            ),
            icon: const Icon(Icons.quiz),
            label: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}
