// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const DiceRoller(),
  ));
}

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  final List<String> diceFaces = [
    'assets/dice1.png',
    'assets/dice2.png',
    'assets/dice3.png',
    'assets/dice4.png',
    'assets/dice5.png',
    'assets/dice6.png',
  ];

  String currentDiceFace = 'assets/dice1.png';
  int currentDiceNumber = 1;

  final Random random = Random();
  void rollDice() {
    setState(() {
      int randomFaceIndex = random.nextInt(6);
      currentDiceFace = diceFaces[randomFaceIndex];
      currentDiceNumber = randomFaceIndex + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: GestureDetector(
          onTap: rollDice,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(currentDiceFace, width: 150, height: 150),
              const SizedBox(height: 20),
              Text(
                'You rolled $currentDiceNumber',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

