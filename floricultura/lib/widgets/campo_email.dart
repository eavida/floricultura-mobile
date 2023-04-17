import 'package:flutter/material.dart';

class CampoEmail extends StatelessWidget {
  const CampoEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Container(
          padding: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
              color: const Color(0xfff4f4f4),
              border: Border.all(color: const Color(0xffC7C7C7)),
              borderRadius: BorderRadius.circular(12)),
          child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress),
        ));
  }
}
