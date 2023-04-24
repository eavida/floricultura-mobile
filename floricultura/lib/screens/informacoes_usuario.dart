import 'package:floricultura/widgets/botao_acesso.dart';
import 'package:floricultura/widgets/botao_editar_info.dart';
import 'package:floricultura/widgets/botao_retornar.dart';
import 'package:flutter/material.dart';

import '../widgets/campo_texto.dart';

class InfoUsuario extends StatefulWidget {
  const InfoUsuario({Key? key}) : super(key: key);

  @override
  _InfoUsuario createState() => _InfoUsuario();
}

class _InfoUsuario extends State<InfoUsuario> {
  bool _isEditable = false;
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _sobrenomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nomeController.text = "André";
    _sobrenomeController.text = "Bucar";
    _emailController.text = "email@iesb.edu.br";
    _senhaController.text = "senhasenha";
  }

  void toggleEdit() {
    setState(
      () {
        _isEditable = !_isEditable;
      },
    );
  }

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
                        children: <Widget>[
                          Flexible(
                            child: CampoTexto(
                              nome: 'Nome',
                              isEditable: _isEditable,
                              controller: _nomeController,
                            ),
                          ),
                          Flexible(
                            child: CampoTexto(
                              nome: 'Sobreome',
                              isEditable: _isEditable,
                              controller: _sobrenomeController,
                            ),
                          )
                        ],
                      ),
                      CampoTexto(
                        nome: 'Email',
                        isEditable: _isEditable,
                        controller: _emailController,
                      ),
                      CampoTexto(
                        nome: 'Senha',
                        isEditable: _isEditable,
                        controller: _senhaController,
                        obscure: true,
                      ),
                      CampoTexto(
                        nome: 'Telefone',
                        isEditable: _isEditable,
                      ),
                      BotaoEditarInfo(
                        onPressed: toggleEdit,
                        isEditable: _isEditable,
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                        child: AcessoBotao(
                          text: 'Meus Pedidos',
                          screenName: 'info-usuario',
                        ),
                      ),
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
