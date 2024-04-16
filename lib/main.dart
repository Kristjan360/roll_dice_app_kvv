import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roll_dice_app_kvv/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(250, 252, 128, 78),
            Color.fromARGB(250, 144, 224, 204),
        ),
      ),
    ),
  );
}


