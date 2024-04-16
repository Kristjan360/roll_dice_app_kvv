import 'package:flutter/material.dart';

class Heading1 extends StatelessWidget {
  const Heading1(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color.fromARGB(250, 0, 0, 0),
        fontSize: 50,
      ),
    );
  }
}
