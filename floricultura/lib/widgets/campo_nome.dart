import 'package:flutter/material.dart';

class CampoNome extends StatefulWidget {
  final bool isEditable;
  const CampoNome({Key? key, required this.isEditable}) : super(key: key);

  @override
  _CampoNomeState createState() => _CampoNomeState();

}

class _CampoNomeState extends State<CampoNome>{

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 4, 8),
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
            hintText: 'Nome',
          )),
        ));
  }
}
