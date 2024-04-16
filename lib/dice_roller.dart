import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1; // +1 to add the 0-6 value, otherwise it remains from 0 - 5
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 30),
            foregroundColor: Colors.black,
            textStyle: const TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}