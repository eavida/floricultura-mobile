import 'package:flutter/material.dart';

class Retornar extends StatelessWidget {
  const Retornar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: const Color(0xffffb3b3),
              minimumSize: const Size(50, 50),
            ),
            child: const Icon(
              Icons.arrow_back,
              color: Color(0xff6c4848),
              size: 30,
            )));
  }
}
