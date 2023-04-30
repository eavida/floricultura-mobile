import 'package:flutter/material.dart';

import '../widgets/botao_adicionar_carrinho.dart';
import '../widgets/botao_retornar.dart';
import '../widgets/detalhes_do_produto.dart';
import '../widgets/enderecoe.dart';
import '../widgets/navigation_bar.dart';
import '../widgets/produto.dart';
import '../widgets/statusp.dart';


class ProdutoPage extends StatelessWidget {
  const ProdutoPage({Key? key}) : super(key: key);

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'R\$ 180,00',
                    style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Orquídia branca - Duas hastes',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Descrição do Produto vem aqui, pelo menos umas duas a quatro linhas de informação sobre o produto que no caso é a orquídia branca de duas hastes botão logo abaixo.',
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: AdicionarCarrinho(
                onPressed: () {},
                text: 'Adicionar ao carrinho',
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Você também pode gostar:",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w100,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                childAspectRatio: 0.7,
                padding: const EdgeInsets.all(8.0),
                children: const [
                  ProductWidget(
                    name: "Orquídea de duas hastes rosa...",
                    price: "R\$ 50,00",
                    image: "images/orquidia.jpg",
                  ),
                  ProductWidget(
                    name: "Orquídea de duas hastes azul...",
                    price: "R\$ 65,00",
                    image: "images/orquidia.jpg",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}