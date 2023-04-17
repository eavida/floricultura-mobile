import 'package:flutter/material.dart';

class CampoSenha extends StatefulWidget {
  final bool isEditable;
  const CampoSenha({Key? key, required this.isEditable}) : super(key: key);

  @override
  _CampoSenhaState createState() => _CampoSenhaState();

}
class _CampoSenhaState extends State<CampoSenha>{
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
          child: TextField(
            enabled: widget.isEditable,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Senha',
            ),
            keyboardType: TextInputType.text,
            obscureText: true,
          ),
        ));
  }
}
