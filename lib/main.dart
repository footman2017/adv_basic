import 'package:adv_basic/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colorTop: Color.fromARGB(255, 103, 243, 3),
          colorEnd: Color.fromARGB(255, 26, 11, 238),
        ),
      ),
    ),
  );
}
