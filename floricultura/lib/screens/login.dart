import 'package:floricultura/widgets/semicirculo_com_icone.dart';
import 'package:flutter/material.dart';
import '../widgets/botao_novo_usuario.dart';
import '../widgets/campo_texto.dart';
import '../widgets/botao_retornar.dart';
import '../widgets/botao_acesso.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                    children: const [
                      CampoTexto(
                        nome: 'Email',
                        isEditable: true,
                        textInputType: TextInputType.emailAddress,
                      ),
                      CampoTexto(
                        nome: 'Senha',
                        isEditable: true,
                        obscure: true,
                      ),
                      AcessoBotao(
                        text: 'Login',
                        screenName: 'main',
                      ),
                      RedirecionarCadastro(),
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
