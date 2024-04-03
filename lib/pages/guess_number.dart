import 'dart:math';

import 'package:flutter/material.dart';

class GuessNumber extends StatefulWidget {
  const GuessNumber({super.key});

  @override
  State<GuessNumber> createState() => _GuessNumberState();
}

class _GuessNumberState extends State<GuessNumber> {
  final TextEditingController _controller = TextEditingController();
  String _result = "";
  int _targetNumber = Random().nextInt(100) + 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarGuessNumber(context),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            Image.asset(
              'assets/images/numbers.png',
              width: 80,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Guess the number',
              style: TextStyle(fontSize: 20),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter the number",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  int guessedNumber = int.tryParse(_controller.text) ?? 0;
                  if (guessedNumber == _targetNumber) {
                    _result = "Congratulations! You guessed the number! 🎉";
                  } else if (guessedNumber < _targetNumber) {
                    _result = "Your guess is too low";
                  } else {
                    _result = "Your guess is too high";
                  }
                });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              child: const SizedBox(
                width: 100,
                child: Center(
                  child: Text(
                    "Guess",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.all(8),
              child: Text(
                "Result: $_result",
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar appBarGuessNumber(BuildContext context) {
    return AppBar(
        title: const Text("Guess Number"),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ));
  }
}
