import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp>{
  var perguntasSelecionada = 0;
  void responder(){
    setState(() {
      perguntasSelecionada++;
    });
    print(perguntasSelecionada);
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
            Text(perguntas.elementAt(perguntasSelecionada)),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            ),
          ],
        )
      ),
    );
  }

}
class PerguntaApp extends StatefulWidget {

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }

  
}
