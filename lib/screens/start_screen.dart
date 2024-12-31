import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
 
   const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz ;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/flutter-icon.png',
          width: 200,
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          "Flutter Quiz App ",
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 50,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 241, 98, 88)),
          label: const Text(
            "Start Quiz",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          icon: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
