import 'package:floricultura/widgets/botao_geral.dart';
import 'package:floricultura/widgets/navigation_bar.dart';
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
        ],
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}