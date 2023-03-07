import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function() func;

  const Answer(this.func, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
      child: ElevatedButton(
        onPressed: func,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                const Color.fromARGB(255, 0, 105, 92)),
            elevation: MaterialStateProperty.all(10.0),
            padding: MaterialStateProperty.all(const EdgeInsets.all(10.0))),
        child: Text(
          answerText,
          style: const TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
