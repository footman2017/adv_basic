import 'package:adv_basic/question_screen.dart';
import 'package:adv_basic/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(changeScreen);
  //   super.initState();
  // }

  // void changeScreen() {
  //   setState(() {
  //     activeScreen = const QuestionScreen();
  //   });
  // }

  var activeScreen = 'start_screen';

  void changeScreen() {
    setState(() {
      activeScreen = 'question_screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    var activeWidget = activeScreen == 'start_screen'
        ? StartScreen(changeScreen)
        : const QuestionScreen();

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 103, 243, 3),
              Color.fromARGB(255, 26, 11, 238),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: activeWidget,
        ),
      ),
    );
  }
}
