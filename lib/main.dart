import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_flutter/answer.dart';
import 'package:quiz_flutter/questions.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print("Pergunta Respondida");
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        "texto": "Qual é sua cor favorita?",
        "respostas": ["Preto", "Vermelho", "Verde", "Azul"],
      },
      {
        "texto": "Qual é sua animal favorito?",
        "respostas": ["Coelho", "Cobra", "Gato", "Cachorro"],
      },
      {
        "texto": "Qual é seu instrutor favorito?",
        "respostas": ["Maria", "João", "Stenio", "Pedro"],
      },
    ];

    List<String> resposta = perguntas[_perguntaSelecionada]["respostas"];
    List<Widget> respostas =
        resposta.map((t) => Resposta(t, _responder)).toList();

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.red[700],
          title: Center(
            child: Text(
              "Quiz",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Questao(
              perguntas[_perguntaSelecionada]["texto"],
            ),
            ...respostas,
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
