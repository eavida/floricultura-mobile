import 'package:flutter/material.dart';

class WidgetTexto extends StatelessWidget{
  final String text;
  final double? tamanho;

  const WidgetTexto({Key? key, required this.text, this.tamanho}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: tamanho,
        )
      ),
    );
  }
}