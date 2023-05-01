import 'package:flutter/material.dart';

class LinhaDivisora extends StatelessWidget{
  const LinhaDivisora({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
       color: Colors.black,
      child: const SizedBox.expand(),
    );
  }
}