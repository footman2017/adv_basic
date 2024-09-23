import 'dart:math';

import 'package:adv_basic/text.dart';
import 'package:flutter/material.dart';

final randomizer = Random();

class ContentWidget extends StatefulWidget {
  const ContentWidget({super.key});

  @override
  State<ContentWidget> createState() {
    return _ContentWidgetState();
  }
}

class _ContentWidgetState extends State<ContentWidget> {
  var currentNumber = 1;

  void roleDice() {
    setState(() {
      currentNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "images/quiz-logo.png",
          width: 300,
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
          onPressed: roleDice,
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
