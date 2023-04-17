import 'package:flutter/material.dart';

class CampoSobrenome extends StatefulWidget {
  final bool isEditable;
  const CampoSobrenome({Key? key, required this.isEditable}) : super(key: key);

  @override
  _CampoSobrenomeState createState() => _CampoSobrenomeState();
}

class _CampoSobrenomeState extends State<CampoSobrenome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(4, 0, 0, 8),
        child: Container(
          padding: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
              color: const Color(0xfff4f4f4),
              border: Border.all(color: const Color(0xffC7C7C7)),
              borderRadius: BorderRadius.circular(12)),
          child: TextField(
              enabled: widget.isEditable,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Sobrenome',
              )),
        ));
  }
}
