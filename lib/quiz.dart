import 'package:adv_basic/data/questions.dart';
import 'package:adv_basic/question_screen.dart';
import 'package:adv_basic/result_screen.dart';
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

  List<String> answerArr = [];

  var activeScreen = 'start_screen';

  void changeScreen() {
    setState(() {
      answerArr = [];
      activeScreen = 'question_screen';
    });
  }

  void addAnswer(String answer) {
    answerArr.add(answer);
    if (answerArr.length == questions.length) {
      setState(() {
        activeScreen = 'result_screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var activeWidget = activeScreen == 'start_screen'
        ? StartScreen(changeScreen)
        : activeScreen == 'result_screen'
            ? ResultScreen(answerArr: answerArr)
            : QuestionScreen(addAnswer);

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
