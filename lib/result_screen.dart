import 'package:adv_basic/data/questions.dart';
import 'package:adv_basic/questions_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  final List<String> answerArr;
  final void Function() backToStart;
  const ResultScreen(
      {super.key, required this.answerArr, required this.backToStart});

  List<Map<String, dynamic>> generateSummary() {
    final List<Map<String, dynamic>> summary = [];

    for (var i = 0; i < answerArr.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': answerArr[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = generateSummary();
    final totalQuestions = questions.length;
    final totalCorrectQuestions = summaryData.where((data) {
      return data["user_answer"] == data["correct_answer"];
    }).length;

    return SizedBox(
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You Answer $totalCorrectQuestions out of $totalQuestions questions correctly",
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData: generateSummary()),
            const SizedBox(
              height: 30,
            ),
            FloatingActionButton.extended(
              label: const Text("Restart"),
              onPressed: backToStart,
              icon: const Icon(Icons.chevron_right_rounded),
              foregroundColor: Colors.black,
              extendedTextStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              backgroundColor: Colors.purpleAccent,
            )
          ],
        ),
      ),
    );
  }
}
