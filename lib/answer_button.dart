import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  final String buttonText;
  final void Function() onTap;
  const AnswerButton(this.buttonText, this.onTap, {super.key});

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 187, 0, 178),
          foregroundColor: Colors.white),
      child: Text(
        buttonText,
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(
            color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
