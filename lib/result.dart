import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function() reset;
  const Result(this.reset, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 110.0),
      alignment: Alignment.center,
      child: Column(
        children: [
          const Text(
            "Done!",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: reset,
            child: Text(
              "Restart The Quiz",
              style: TextStyle(
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade800,
              ),
            ),
          )
        ],
      ),
    );
  }
}
