import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  const Resultado(this.pontuacao, {Key? key}) : super(key: key);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns! \nPontos: $pontuacao';
    } else if (pontuacao < 12) {
      return 'Você é bom!\nPontos: $pontuacao';
    } else if (pontuacao < 16) {
      return 'Impressionante!\nPontos: $pontuacao';
    } else {
      return 'Nível Jedi!\nPontos: $pontuacao';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        fraseResultado,
        style: const TextStyle(fontSize: 28),
      ),
    );
  }
}
