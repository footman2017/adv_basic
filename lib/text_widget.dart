import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget({super.key, required this.text});

  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.lato(
          color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold),
    );
  }
}
