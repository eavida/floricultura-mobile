import 'package:floricultura/widgets/botao_acesso.dart';
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
          AcessoBotao(text: 'Catálogo', screenName: 'catalogo'),
          AcessoBotao(text: 'Informaçoes de Usuario', screenName: 'info-usuario'),
          AcessoBotao(text: 'Carrinho', screenName: 'carrinho'),
          AcessoBotao(text: 'Detalhes do Produto', screenName: 'detalhesp',),
          AcessoBotao(text: 'Página do produto', screenName: 'produto-page',),
        ],
      ),
    );
  }
}