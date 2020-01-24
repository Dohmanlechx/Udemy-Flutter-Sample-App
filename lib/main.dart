import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, Object>> _questions = const [
    {
      "questionText": "What's your favorite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 7},
        {"text": "Green", "score": 3},
        {"text": "Blue", "score": 0},
      ],
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": [
        {"text": "Dog", "score": 10},
        {"text": "Cat", "score": 7},
        {"text": "Horse", "score": 3},
        {"text": "Elephant", "score": 0},
      ],
    },
    {
      "questionText": "Who's your favorite instructor?",
      "answers": [
        {"text": "Max", "score": 10},
        {"text": "Max", "score": 7},
        {"text": "Max", "score": 3},
        {"text": "Max", "score": 0},
      ],
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Super Flutter app"),
        ),
        body: _questionIndex < _questions.length
            ? Column(children: [
                Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  onAnswerClick: _answerQuestion,
                ),
              ])
            : Result(
                totalScore: _totalScore,
                onResetQuizClick: _resetQuiz,
              ),
      ),
    );
  }
}
