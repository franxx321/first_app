import 'package:flutter/material.dart';
import'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  final Random random= Random();
  void rollDice() {
    int diceRoll= random.nextInt(6)+1;
    setState(() {
      currentImage = 'assets/images/dice-$diceRoll.png';
    });

  }

  var currentImage = 'assets/images/dice-2.png';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(currentImage, width: 200),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 30),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28, color: Colors.white),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
