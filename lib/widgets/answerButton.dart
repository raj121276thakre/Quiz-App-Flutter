import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
   const AnswerButton({super.key,required this.answerText, required this.onPressed});

  final String answerText;
  final void Function() onPressed ;


  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.red,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13),
          child: Text(
            answerText,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
