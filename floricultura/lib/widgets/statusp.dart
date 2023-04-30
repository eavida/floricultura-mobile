import 'package:flutter/material.dart';

class StatusP extends StatelessWidget {
  const StatusP({Key? key}) : super(key: key);

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
                    'Status do pedido:',
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
                    'Entrege',
                    style: TextStyle(
                    fontSize: 16.0,
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