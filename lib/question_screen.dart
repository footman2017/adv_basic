import 'package:adv_basic/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "question...",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28.0,
            ),
          ),
          const SizedBox(height: 30),
          AnswerButton("answer 1", () {}),
          const SizedBox(height: 10),
          AnswerButton("answer 2", () {}),
          const SizedBox(height: 10),
          AnswerButton("answer 3", () {}),
        ],
      ),
    );
  }
}
