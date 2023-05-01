import 'package:flutter/material.dart';

class PrecoItem extends StatelessWidget {
  final String texto;
  final double valor;
  final double? fontSize;

  const PrecoItem(
      {Key? key,
      required this.texto,
      required this.valor,
      this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String valorArredondado = valor.toStringAsFixed(2);
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            texto,
            style: TextStyle(fontSize: fontSize),
          ),
          Text(
            'R\$$valorArredondado',
            style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
