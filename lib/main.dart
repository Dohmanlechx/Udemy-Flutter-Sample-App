import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

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
    if (_questionIndex < _questions.length - 1) {
      setState(() {
        _questionIndex += 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Question question =
        Question(_questions[_questionIndex]["questionText"]);

    final List<Answer> answers =
        (_questions[_questionIndex]["answers"] as List<String>)
            .map((answerText) {
      return Answer(answerText, _answerQuestion);
    }).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Super Flutter app"),
        ),
        body: Column(
          children: [
            question,
            ...answers,
          ],
        ),
      ),
    );
  }
}
