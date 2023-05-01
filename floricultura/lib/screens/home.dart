import 'package:floricultura/widgets/botao_geral.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Botao(text: 'Catálogo', screenName: 'catalogo'),
          Botao(text: 'Informaçoes de Usuario', screenName: 'info-usuario'),
          Botao(text: 'Carrinho', screenName: 'carrinho'),
          Botao(text: 'Detalhes do Produto', screenName: 'detalhes-produto',),
          Botao(text: 'Página do produto', screenName: 'produto-page',),
        ],
      ),
    );
  }
}