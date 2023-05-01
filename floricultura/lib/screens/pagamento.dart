import 'package:floricultura/widgets/botao_geral.dart';
import 'package:flutter/material.dart';
import 'package:floricultura/widgets/botao_retornar.dart';
import '../widgets/campo_texto.dart';
import '../widgets/navigation_bar.dart';

import '../widgets/preco_item.dart';

class Pagamento extends StatelessWidget {
  const Pagamento ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(children: [
            const Retornar(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Pagamento e Entrega",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w100,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            const CampoTexto(nome: 'Endereco', isEditable: true,),
            const SizedBox(height: 20),
            Container(
              height: 1,
              color: Colors.black,
            ),
            const SizedBox(height: 20),
            const CampoTexto(nome: 'Numero do Cartao', isEditable: true,),
            const CampoTexto(
              nome: 'Nome do Titular',
              isEditable: true,
            ),
            Row(
              children: const [
                Expanded(
                  child: CampoTexto(isEditable: true, nome: 'CVV'),
                ),
                Expanded(
                  child: CampoTexto(isEditable: true, nome: 'Vencimento'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 1,
              color: Colors.black,
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: PrecoItem(texto: 'Subtotal:', valor: 360.00,),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: PrecoItem(texto: 'Desconto:', valor: 10.00,),
            ),
            const SizedBox(height: 20),
            Container(
              height: 1,
              color: Colors.black,
              child: const SizedBox.expand(),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: PrecoItem(texto: 'Total:', valor: 350.00, fontSize: 25,),
            ),
            const SizedBox(height: 20),
            Container(
              height: 1,
              color: Colors.black,
              child: const SizedBox.expand(),
            ),
            const SizedBox(height: 20),
            Container(
              height: 45,
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Botao(text: 'Finalizar Compra',),
            ),
          ]),
        ),
      ),
    );
  }
}