import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado{
    if(pontuacao < 8){
      return 'Parabéns!';
    }else if(pontuacao < 12){
      return 'Você é bom!';
    }else if(pontuacao < 16){
      return 'Impressionante!';
    }else{
      return 'Nivel Jedi!';
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
            style: TextStyle(fontSize: 28),
          ),
        ),
         TextButton(
             style: TextButton.styleFrom(
            primary: Colors.blue, // background
          ),
            child: Text('Reiniciar?',
            style: TextStyle(fontSize: 20),
            ),
            onPressed: quandoReiniciarQuestionario,
            ),
      ],
    );
  }
}
