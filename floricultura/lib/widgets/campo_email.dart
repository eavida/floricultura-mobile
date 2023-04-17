import 'package:flutter/material.dart';

class CampoEmail extends StatefulWidget {
  final bool isEditable;
  const CampoEmail({Key? key, required this.isEditable}) : super(key: key);

  @override
  _CampoEmailState createState() => _CampoEmailState();

}

class _CampoEmailState extends State<CampoEmail>{
  String _texto = 'Email';

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
                hintText: 'Email',
              ),
              // onChanged: (novoTexto){
              //   setState((){
              //     _texto = novoTexto;
              //   });
              // },
              keyboardType: TextInputType.emailAddress),
        ));
  }
}
