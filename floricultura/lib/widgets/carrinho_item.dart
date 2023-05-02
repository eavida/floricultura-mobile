import 'package:flutter/material.dart';

import 'botao_imagem.dart';

class CarrinhoItem extends StatelessWidget {
  final String nome;
  final String imagem;
  final double preco;

  const CarrinhoItem(
      {Key? key, required this.nome, required this.imagem, required this.preco})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String precoArredondado = preco.toStringAsFixed(2);
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFFFB3B3),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BotaoImagem(
              imagem: imagem,
              screenName: 'produto-page',
              height: 100,
              width: 100,
            ),
            Text(
              nome,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: Color(0xff6c4848),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'R\$$precoArredondado',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff6c4848),
                  ),
                ),
                const SizedBox(height: 8),
                GestureDetector(
                  onTap: () {
                    // Implemente a lógica para remover o widget
                  },
                  child: const Icon(
                    Icons.close,
                    color: Color(0xff6c4848),
                    size: 24,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
