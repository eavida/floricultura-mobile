import 'package:flutter/material.dart';

class Icone extends StatelessWidget {
  final IconData iconData;

  const Icone({Key? key, required this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.fromLTRB(0, 60, 0, 20),
      child: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          color: Color(0xffffb3b3),
          shape: BoxShape.circle,
        ),
        child: Icon(iconData, color: const Color(0xff6c4848), size: 30),
      ),
    );
  }
}
