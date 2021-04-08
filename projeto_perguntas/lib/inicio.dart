import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {

  final String sobre;

  Inicio(this.sobre);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        sobre,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      )
      );
  }
}