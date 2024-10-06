import 'package:adv_basic/data/questions.dart';
import 'package:adv_basic/questions_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  final List<String> answerArr;
  final void Function() restart;
  const ResultScreen(
      {super.key, required this.answerArr, required this.restart});

  List<Map<String, dynamic>> generateSummary() {
    final List<Map<String, dynamic>> summary = [];

    for (var i = 0; i < answerArr.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': answerArr[i],
        'is_correct': questions[i].answers[0] == answerArr[i]
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
            SizedBox(
              width: 150,
              child: OutlinedButton.icon(
                label: Text(
                  'Restart',
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                ),
                icon: const Icon(
                  Icons.restart_alt,
                  color: Colors.white,
                ),
                style: OutlinedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  side: const BorderSide(color: Colors.white),
                ),
                onPressed: restart,
                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     const Icon(
                //       Icons.restart_alt,
                //       color: Colors.white,
                //     ),
                //     Text(
                //       'Restart',
                //       style: GoogleFonts.lato(
                //           color: Colors.white,
                //           fontSize: 14.0,
                //           fontWeight: FontWeight.bold),
                //     ),
                //   ],
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
