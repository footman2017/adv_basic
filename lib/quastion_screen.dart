import 'package:adv_basic/text_widget.dart';
import 'package:flutter/material.dart';

class QuastionScreen extends StatefulWidget {
  const QuastionScreen({super.key});

  @override
  State<QuastionScreen> createState() {
    return _QuastionScreenState();
  }
}

class _QuastionScreenState extends State<QuastionScreen> {
  @override
  Widget build(BuildContext context) {
    return const TextWidget(text: "anjigng");
  }
}
