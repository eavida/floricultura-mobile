import 'package:flutter/material.dart';

class BotaoEditarInfo extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isEditable;

  const BotaoEditarInfo(
      {Key? key, required this.onPressed, required this.isEditable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      alignment: Alignment.centerRight,
      child: FractionallySizedBox(
        alignment: Alignment.centerRight,
        widthFactor: 0.4,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            minimumSize: const Size.fromHeight(30),
            textStyle: const TextStyle(fontSize: 10),
            backgroundColor: const Color(0xffc2c2c2),
            foregroundColor: Colors.black,
          ),
          onPressed: onPressed,
          child: Text(isEditable ? 'Salvar' : 'Editar'),
        ),
      ),
    );
  }
}
