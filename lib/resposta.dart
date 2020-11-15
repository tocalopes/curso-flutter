import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  
  final String label;
  final void Function() onPressed;

  Resposta(this.label,this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
      onPressed: onPressed,
      color: Colors.blue,
      textColor: Colors.white,
      child: Text(label),
      ),
    );
  }
}