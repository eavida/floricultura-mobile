import 'package:flutter/material.dart';

class DetalhesDP extends StatelessWidget {
  const DetalhesDP({Key? key}) : super(key: key);

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
                    'Planta 1: orquídia',
                    style: TextStyle(fontSize: 20.0,
                    fontWeight: FontWeight.w300,
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
                    'Preço: R\$ 180,00',
                    style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: const [
                  Text(
                    'Planta 2: Begônia',
                    style: TextStyle(fontSize: 20.0,
                    fontWeight: FontWeight.w300,
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
                    'Preço: R\$ 200,00',
                    style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: const [
                  Text(
                    'Taxa de entrega: R\$ 20,00',
                    style: TextStyle(fontSize: 20.0,
                    fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: const [
                  Text(
                    'Total: R\$ 400,00',
                    style: TextStyle(fontSize: 30.0,
                    fontWeight: FontWeight.w700,
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