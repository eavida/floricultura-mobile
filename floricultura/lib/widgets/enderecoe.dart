import 'package:flutter/material.dart';

class EnderecoE extends StatelessWidget {
  const EnderecoE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double maxWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFB3B3),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
          children: [            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: const [
                  Text(
                    'Endereço de entrega:',
                    style: TextStyle(fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: const [
                  Text(
                    'O endereço vem aqui',
                    style: TextStyle(fontSize: 16.0,
                    fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ]
      ),
    );
  }
}