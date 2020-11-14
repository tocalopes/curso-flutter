import 'package:flutter/material.dart';

main(){
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget{

  final perguntaSelecionada = 0;

  void responder(){
    //perguntaSelecionada++;
    print("Respondido");
  }
  Widget build(BuildContext context){

    final List<String> perguntas = [
      'Qual sua cor favorita?',
      'Qual seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            Text(perguntas[perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            ),
          ],
        ),

      ),
    );
  }

}