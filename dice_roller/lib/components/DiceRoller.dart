import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int dice1 = 1;
  int dice2 = 1;
  Random generator = Random();

  void rollDice() {
    setState(() {
      dice1 = generator.nextInt(6) + 1;
      dice2 = generator.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/dice-$dice1.png',
                width: 100,
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                'assets/dice-$dice2.png',
                width: 100,
              ),
            ],
          ),
          SizedBox(
            height: 20, // Spacing between the dice row and the button
          ),
          ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
              minimumSize: Size(
                120,
                40,
              ),
              backgroundColor: Color(
                0xFFE0E0E0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
            ),
            child: Text('ROLL'),
          )
        ],
      ),
    );
  }
}
