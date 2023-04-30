import 'package:flutter/material.dart';

class CarrinhoItem extends StatelessWidget {
  final String nome;
  final String imagem;
  final double preco;

  const CarrinhoItem({Key? key, required this.nome, required this.imagem, required this.preco}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String precoArredondado = preco.toStringAsFixed(2);
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFB3B3),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagem,
              fit: BoxFit.cover,
            ),
            )

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
    );
  }
}