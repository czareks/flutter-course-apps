import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/img/dice-2.png';

  rollDice() {
    var diceRoll = Random().nextInt(6) + 1;

    setState(() {
      activeDiceImage = 'assets/img/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.all(12),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 24,
              )),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
