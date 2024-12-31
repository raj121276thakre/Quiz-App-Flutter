import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screens/quiz_screen.dart';
import 'package:quiz_app/screens/result_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];

  Widget? widgetScreen;
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'quiz-screen';
    });
  }

 

  void chooseAnswers(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 245, 208, 205),
                Color.fromARGB(255, 238, 154, 148),
              ],
            ),
          ),
          child: Center(
            child: activeScreen == 'start-screen'
                ? StartScreen(switchScreen)
                : activeScreen == 'quiz-screen'
                    ? QuizScreen(
                        onSelectAnswer: chooseAnswers,
                      )
                    :  ResultScreen(chosenAnswers: selectedAnswers, resStartQuiz: switchScreen,),
          ),
        ),
      ),
    );
  }
}
