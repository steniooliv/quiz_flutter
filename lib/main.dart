import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_flutter/quiz.dart';
import 'package:quiz_flutter/result.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      "texto": "Qual nome da esposa de Luke Skywalker?",
      "respostas": [
        {"texto": "Bianezzis Mathias", "pontuacao": 0},
        {"texto": "Mara Jade", "pontuacao": 10},
        {"texto": "Mia Coutera", "pontuacao": 0},
        {"texto": "Jadire Had", "pontuacao": 0},
      ],
    },
    {
      "texto": "Onde nasceu Sheldon em TBT?",
      "respostas": [
        {"texto": "Pará", "pontuacao": 0},
        {"texto": "Mississipi", "pontuacao": 0},
        {"texto": "Nova Iorque", "pontuacao": 0},
        {"texto": "Texas", "pontuacao": 10},
      ],
    },
    {
      "texto": "Qual nome do mostro em Stranger Things?",
      "respostas": [
        {"texto": "Zordon", "pontuacao": 0},
        {"texto": "Pedagorgon", "pontuacao": 0},
        {"texto": "Demargongon", "pontuacao": 10},
        {"texto": "Psicorgon", "pontuacao": 0},
      ],
    },
  ];

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
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
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                responder: _responder,
                perguntaSelecionada: _perguntaSelecionada,
              )
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
