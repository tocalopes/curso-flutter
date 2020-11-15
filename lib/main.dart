import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main(){
  runApp(PerguntaApp());
}
class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;

  void _responder(){
    setState(() {
      _perguntaSelecionada++;  
    });
    print("Respondido");
  }

  @override
  Widget build(BuildContext context){

    final List<Map<String,Object>> perguntas = [
      {
        'texto' : 'Qual sua cor favorita?',
        'resposta' : ['Preto','Vermelho','roxo','Branco']
      },
      {
        'texto' : 'Qual o seu animal favorito?',
        'resposta' : ['Coelho','Cobra','elefante','Leão'],
      },
      {
        'texto' : 'Qual o seu pookemon favorito?',
        'resposta' : ['Pikachu','Blastoise','fodasemon','Goku'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto']),
            Resposta("Resposta 1",_responder),
            Resposta("Resposta 2",_responder),
            Resposta("Resposta 3",_responder), 
          ],
        ),

      ),
    );
  }
}

class PerguntaApp extends StatefulWidget{
  
  _PerguntaAppState createState(){
    return new _PerguntaAppState();
  }

}