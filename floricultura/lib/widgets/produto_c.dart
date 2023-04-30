import 'package:flutter/material.dart';

class ProductCWidget extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFB3B3),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
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
            child: Image.network(
              'assets/images/orquidia.jpg',
              fit: BoxFit.cover,
            ),
            )

          ),
          const Text(
            'Produto 2 no carrinho',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
               const Text(
                'R\$ 180,00',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  // Implemente a lógica para remover o widget
                },
                child: const Icon(
                  Icons.close,
                  color: Color.fromARGB(255, 0, 0, 0),
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