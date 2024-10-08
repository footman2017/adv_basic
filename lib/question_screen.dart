import 'package:adv_basic/answer_button.dart';
import 'package:adv_basic/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  final void Function(String answer) addAnswer;
  const QuestionScreen(this.addAnswer, {super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var curretnQuestionIndex = 0;

  void onTapHandler(String answer) {
    widget.addAnswer(answer);
    setState(() {
      curretnQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[curretnQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getSuffledAnswers().map((answer) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AnswerButton(answer, () {
                    onTapHandler(answer);
                  }),
                  const SizedBox(
                    height: 10,
                  )
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
