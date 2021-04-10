import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 1) {
      return "Você acertou $pontuacao, tá ruim hein, credo!";
    } else if (pontuacao < 11) {
      return "Você acertou $pontuacao, não fez mais que obrigação!";
    } else if (pontuacao < 20) {
      return "Você acertou $pontuacao, É... tá chegando lá!";
    } else if (pontuacao < 31) {
      return "Você acertou $pontuacao, Parabéns, você é quase um Jedi!";
    } else {
      return "Você acertou $pontuacao, Você é um verdadeiro Mestre Jedi!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(padding: EdgeInsets.all(50)),
        TextButton(
            onPressed: reiniciarQuestionario,
            child: Text(
              "Reiniciar?",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            ))
      ],
    );
  }
}
