import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer chosen!");
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
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
            Text("The question!"),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: () => print("Answer 1 chosen!"),
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
