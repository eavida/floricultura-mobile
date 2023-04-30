import 'package:flutter/material.dart';

import '../widgets/botao_retornar.dart';
import '../widgets/detalhes_do_produto.dart';
import '../widgets/enderecoe.dart';
import '../widgets/navigation_bar.dart';
import '../widgets/statusp.dart';

class DetalhesProduto extends StatelessWidget {
  const DetalhesProduto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children:  [
            const Retornar(),
            Container(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: const StatusP(),
            ),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: const DetalhesDP(),
            ),           
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: const EnderecoE(),
            ),            
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
