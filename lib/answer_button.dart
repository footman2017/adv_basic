import 'package:flutter/material.dart';

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
      child: Text(buttonText),
    );
  }
}
