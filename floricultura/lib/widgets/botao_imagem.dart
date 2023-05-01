import 'package:flutter/material.dart';

class BotaoImagem extends StatelessWidget {
  final String imagem;
  final double? tamanho;
  final String screenName;
  final double height;
  final double width;

  const BotaoImagem(
      {Key? key,
      required this.imagem,
      this.tamanho,
      required this.screenName, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> rotas = {
      'produto-page': '/produto-page',
    };

    return SizedBox(
      height: height,
      width: width,
      child: IconButton(
        icon: Image.asset(
          imagem,
          fit: BoxFit.cover,
        ),
        iconSize: tamanho,
        onPressed: () {
          final routeName = rotas[screenName];
          if (routeName != null) {
            Navigator.pushNamed(context, routeName);
          }
        },
      ),
    );
  }
}
