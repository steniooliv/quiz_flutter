import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 10) {
      return "Tá ruim hein, credo!";
    } else if (pontuacao < 20) {
      return "Não fez mais que obrigação!";
    } else if (pontuacao < 30) {
      return "É... tá chegando lá!";
    } else {
      return "Nível Jedi!";
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
          ),
        ),
        TextButton(
            onPressed: reiniciarQuestionario,
            child: Text(
              "Reiniciar",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            ))
      ],
    );
  }
}
