import 'package:adv_basic/text_widget.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function() changeScreen;
  const StartScreen(this.changeScreen, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "images/quiz-logo.png",
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(
          height: 80,
        ),
        const TextWidget(text: "Lorem ipsum dolor sit amet."),
        const SizedBox(
          height: 30,
        ),
        FloatingActionButton.extended(
          label: const Text("Start Quiz"),
          onPressed: changeScreen,
          icon: const Icon(Icons.chevron_right_rounded),
          foregroundColor: Colors.black,
          extendedTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          backgroundColor: Colors.purpleAccent,
        )
      ],
    );
  }
}
