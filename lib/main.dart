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
      "answers": ["Black", "Purple", "Red", "Blue"],
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": ["Dog", "Cat", "Elephant", "Horse", "Cow"],
    },
    {
      "questionText": "Who's your favorite instructor?",
      "answers": ["Max", "Max", "Max", "Max", "Max"],
    }
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
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
                  onClick: _answerQuestion,
                ),
              ])
            : Result(),
      ),
    );
  }
}
