import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndx = 0;
  final List<Map<String, Object>> _questions = [
    {
      'questionText': "What's the capital of Egypt?",
      'answers': ["Baltim", "Cairo", "Alex", "Desouk"]
    },
    {
      'questionText': "What is the number of hearts in an octopus?",
      'answers': ["1", "0", "3", "5"],
    },
    {
      'questionText': "What is the first mosque built in Egypt?",
      'answers': [
        "Al-Salam Mosque",
        "Al-Qods Mosque",
        "Amr Ibn Al-Aas Mosque",
        "Al-Aqsa Mosque"
      ],
    },
    {
      'questionText': "What is the number of teeth in the cat?",
      'answers': ["10", "12", "30", "40"],
    },
    {
      'questionText': "When did America first space flight?",
      'answers': ["1962", "1999", "2002", "1989"],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndx = 0;
    });
  }

  void nextQuestion() {
    setState(() {
      _questionIndx += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.teal.shade800,
          centerTitle: true,
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 150.0),
          child: _questionIndx < _questions.length
              ? Quiz(_questions, _questionIndx, nextQuestion)
              : Result(_resetQuiz),
        ),
      ),
    );
  }
}
