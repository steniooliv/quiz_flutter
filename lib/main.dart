import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Quiz")),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[0]),
            ElevatedButton(
              child: Text("Answer 1"),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text("Answer 2"),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text("Answer 3"),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
