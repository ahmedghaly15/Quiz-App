import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndx;
  final Function() nextQuestion;

  const Quiz(this.questions, this.questionIndx, this.nextQuestion, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndx]['questionText'].toString()),
        ...(questions[questionIndx]['answers'] as List<String>).map((answer) {
          return Answer(nextQuestion, answer);
        }).toList(),
      ],
    );
  }
}
