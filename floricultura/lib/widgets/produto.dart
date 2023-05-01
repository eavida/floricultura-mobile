import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String name;
  final String price;
  final String image;

  const ProductWidget({required this.name, required this.price, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          color: const Color.fromARGB(255, 255, 255, 255),
          border: Border.all(
            color: const Color(0xFFFFB3B3),
            width: 8.5,
          ),
          boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.asset(             
                image,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              height: 2,
              decoration: const BoxDecoration(
                color: Color(0xFFFFB3B3),
                borderRadius: BorderRadius.zero,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              price,
              style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(
              name,
              style: const TextStyle(fontSize: 14.0),
            ),
            const SizedBox(height: 8.0),
            const Text(
              "Disponível",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 9.0,
                color: Color(0xFF4BC56D),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
