import 'package:flutter/material.dart';


class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAnswers, required this.resStartQuiz});

  final List<String> chosenAnswers;
  final void Function() resStartQuiz;

  @override
  Widget build(BuildContext context) {
    // final numTotalQuestion = questions.length;
    // final numCurrectQuestion = 0;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "You answered X out of Y questions correctly!",
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: resStartQuiz,
              style: OutlinedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 241, 98, 88)),
              label: const Text(
                "Re-Start Quiz",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              icon: const Icon(
                Icons.loop_sharp,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
