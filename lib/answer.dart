import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: ElevatedButton(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(100, 50)),
          backgroundColor: MaterialStateProperty.all(Colors.red.shade400),
        ),
        child: Text(
          texto,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white70,
          ),
        ),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
