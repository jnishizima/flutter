import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntasSelecionada = 0;
  void _responder(){
    setState(() {
      _perguntasSelecionada++;
    });
    print(_perguntasSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é a seu animal favorito?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntasSelecionada]),
            Resposta('Resposta 1'),
            Resposta('Resposta 2'),
            Resposta('Resposta 3'),
          ],
        )
      ),
    );
  }

}
class PerguntaApp extends StatefulWidget {

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }

  
}
