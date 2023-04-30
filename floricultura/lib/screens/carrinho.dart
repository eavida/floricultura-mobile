import 'package:flutter/material.dart';
import 'package:floricultura/widgets/botao_retornar.dart';
import '../widgets/botao_comprar.dart';
import '../widgets/cupom_desconto.dart';
import '../widgets/navigation_bar.dart';
import '../widgets/produto_c.dart';

class Carrinho extends StatelessWidget {
  const Carrinho({super.key});



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
          children: [
            const Retornar(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Carrinho",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w100,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),           
            const SizedBox(height: 25),
            Container(padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: ProductCWidget(),
            ),
            const SizedBox(height: 10),
            Container(padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: ProductCWidget(),
            ),
            const SizedBox(height: 20),
            Container(padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: const CupomDesconto(),
            ),            
            const SizedBox(height: 20),
            Container(
              height: 1,
              color: Colors.black,
              child: const SizedBox.expand(),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Subtotal:',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    'R\$ 360,00',
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Desconto:',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    '-R\$ 10,00',
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 1,
              color: Colors.black,
              child: const SizedBox.expand(),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Total:',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  Text(
                    'R\$ 350,00',
                    style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 45,
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              ),
              child: ComprarBotao(
                onPressed: () {},
                text: 'Comprar',
              ),
            ),
          ]
      ),
    ),
    bottomNavigationBar: const NavBar(),
   );
  }
}