import 'package:floricultura/widgets/botao_usuario_existente.dart';
import 'package:flutter/material.dart';

import '../widgets/campo_texto.dart';
import '../widgets/botao_geral.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
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
                          Flexible(
                            child: CampoTexto(
                              nome: 'Nome',
                              isEditable: true,
                            ),
                          ),
                          Flexible(
                            child: CampoTexto(
                              nome: 'Sobrenome',
                              isEditable: true,
                            ),
                          )
                        ],
                      ),
                      const CampoTexto(
                        nome: 'Email',
                        isEditable: true,
                        textInputType: TextInputType.emailAddress,
                      ),
                      const CampoTexto(
                        nome: 'Senha',
                        isEditable: true,
                        obscure: true,
                      ),
                      const Botao(
                        text: 'Registrar',
                        screenName: 'home',
                      ),
                      const RedirecionarLogin()
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
