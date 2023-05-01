import 'package:floricultura/widgets/botao_retornar.dart';
import 'package:flutter/material.dart';

class ImagemHeader extends StatelessWidget{
  final String imagem;

  const ImagemHeader({Key? key, required this.imagem}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      height: 300,
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Image.asset(
              imagem,
              fit: BoxFit.cover,
            ),),
          const Align(
            alignment: Alignment(0, 2),
            child: Retornar(),
          )
        ],
      ),
    );
  }
}