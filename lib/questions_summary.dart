import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, dynamic>> summaryData;
  const QuestionsSummary({super.key, required this.summaryData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                      color: data["is_correct"] ? Colors.green : const Color.fromARGB(255, 163, 35, 26),
                      borderRadius: const BorderRadius.all(Radius.circular(25.0))),
                  child: Center(
                    child: Text(
                      ((data["question_index"] as int) + 1).toString(),
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data["question"].toString(),
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data["user_answer"].toString(),
                        style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 14, 199, 85),
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        data["correct_answer"].toString(),
                        style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 10, 44, 138),
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
