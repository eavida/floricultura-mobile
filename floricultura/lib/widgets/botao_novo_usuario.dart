import 'package:flutter/material.dart';

class RedirecionarCadastro extends StatelessWidget{
  const RedirecionarCadastro({super.key});
  
  @override
  Widget build (BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children:[
        const Text(
          'Não possui uma conta?',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xbb6c4848),
          )
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Criar conta.')
        )
      ]
    );
  }
}