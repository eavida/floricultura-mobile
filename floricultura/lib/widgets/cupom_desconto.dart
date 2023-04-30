import 'package:flutter/material.dart';

class CupomDesconto extends StatelessWidget {
  const CupomDesconto({Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      
      child: Row(
        children: [
          const Expanded(
            
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Cupom de desconto',
              ),
            ),
          ),
          SizedBox(
            height: 50,
            child: ElevatedButton(
            onPressed: () {
              // Lógica para adicionar o cupom
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFFB3B3),
            ),
            child: const Text('Adicionar'),
          ),
          ),
          
        ],
      ),
    );
  }
}