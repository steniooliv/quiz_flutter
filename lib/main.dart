import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void resposta() {
    setState(() {
      perguntaSelecionada++;
    });
    print("Pergunta Respondida");
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.red[700],
          title: Center(
              child: Text("Quiz", style: TextStyle(color: Colors.white))),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[perguntaSelecionada],
                style: TextStyle(color: Colors.white)),
            ElevatedButton(
              child: Text("Answer 1", style: TextStyle(color: Colors.white)),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.red.shade400)),
              onPressed: resposta,
            ),
            ElevatedButton(
              child: Text("Answer 2", style: TextStyle(color: Colors.white)),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.blue.shade400)),
              onPressed: resposta,
            ),
            ElevatedButton(
              child: Text("Answer 3", style: TextStyle(color: Colors.white)),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.green.shade400)),
              onPressed: resposta,
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
