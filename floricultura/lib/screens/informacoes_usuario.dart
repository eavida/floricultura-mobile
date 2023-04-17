import 'package:floricultura/widgets/botao_editar_info.dart';
import 'package:floricultura/widgets/botao_retornar.dart';
import 'package:floricultura/widgets/campo_telefone.dart';
import 'package:flutter/material.dart';

import '../widgets/campo_email.dart';
import '../widgets/campo_nome.dart';
import '../widgets/campo_senha.dart';
import '../widgets/campo_sobrenome.dart';
import '../widgets/navigation_bar.dart';

class InfoUsuario extends StatefulWidget {
  const InfoUsuario({Key? key}) : super(key: key);

  @override
  _InfoUsuario createState() => _InfoUsuario();
}

class _InfoUsuario extends State<InfoUsuario> {
  bool _isEditable = false;
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _sobrenomeController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  TextEditingController _telefoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nomeController.text = "André";
    _sobrenomeController.text = "Bucar";
    _emailController.text = "email@iesb.edu.br";
    _senhaController.text = "*********";
    _telefoneController.text = "";
  }

  void toggleEdit(){
    setState(() {
      _isEditable = ! _isEditable;
    });
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
                      children: <Widget>[
                        Flexible(child: CampoNome(isEditable: _isEditable)),
                        Flexible(child: CampoSobrenome(isEditable: _isEditable))
                      ],
                    ),
                    CampoEmail(isEditable: _isEditable),
                    CampoSenha(isEditable: _isEditable),
                    CampoTelefone(isEditable: _isEditable),
                    BotaoEditarInfo(onPressed: toggleEdit, isEditable: _isEditable)
                  ],
                )),
              )),
              const NavBar()
            ])));
  }
}
