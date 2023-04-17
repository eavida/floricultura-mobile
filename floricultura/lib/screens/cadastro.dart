import 'package:floricultura/widgets/botao_usuario_existente.dart';
import 'package:floricultura/widgets/campo_sobrenome.dart';
import 'package:flutter/material.dart';

import '../widgets/botao_retornar.dart';
import '../widgets/campo_email.dart';
import '../widgets/campo_nome.dart';
import '../widgets/campo_senha.dart';
import '../widgets/navigation_bar.dart';
import '../widgets/botao_acesso.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              //image: NetworkImage(
              //"https://images.unsplash.com/photo-1544833058-e70f9ca25c17?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
              fit: BoxFit.cover,
            )),
            child: Column(children: [
              const Retornar(),
              Expanded(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: const <Widget>[
                        Flexible(child: CampoNome()),
                        Flexible(child: CampoSobrenome())
                      ],
                    ),
                    const CampoEmail(),
                    const CampoSenha(),
                    const AcessoBotao(text: 'Registrar'),
                    const RedirecionarLogin()
                  ],
                )),
              )),
              const NavBar()
            ])));
  }
}
