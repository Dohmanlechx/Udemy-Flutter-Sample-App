import 'package:flutter/material.dart';
import 'question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    final _questions = [
      "What's your fav color?",
      "What's your fav animal?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First Flutter app"),
        ),
        body: Column(
          children: [
            Question(_questions[_questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => print("Answer 2 chosen!"),
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () => print("Answer 3 chosen!"),
            ),
          ],
        ),
      ),
    );
  }
}
