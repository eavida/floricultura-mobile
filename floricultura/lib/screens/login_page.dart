import 'package:flutter/material.dart';
import '../widgets/navigation_bar.dart';
import '../widgets/botao_retornar.dart';
import '../widgets/campo_email.dart';
import '../widgets/campo_senha.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget loginSection = Column(
      children: [
        const Retornar(),
        Expanded(
          child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const CampoEmail(),
              const CampoSenha(),
              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(140, 40),
                    textStyle: const TextStyle(fontSize: 15),
                    backgroundColor: const Color(0xffffb3b3),
                    foregroundColor: const Color(0xff6c4848),
                  ),
                  child: const Text('Login'),
                  onPressed: () {},
              ))
        ])),
        const NavBar()
      ],
    );
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            //image: AssetImage("assets/images/background.jpg"),
            image: NetworkImage(
                "https://images.unsplash.com/photo-1544833058-e70f9ca25c17?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
            fit: BoxFit.cover,
          )),
          child: Column(
            children:[
              const Retornar(),
              Expanded(
                child:Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CampoEmail(),
                      const CampoSenha(),
                      Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // minimumSize: const Size(140, 40),
                    textStyle: const TextStyle(fontSize: 15),
                    backgroundColor: const Color(0xffffb3b3),
                    foregroundColor: const Color(0xff6c4848),
                  ),
                  child: const Text('Login'),
                  onPressed: () {},
              ))
                    ],
                  )
                )
              ),
              const NavBar()
            ]
          )
        ));
  }
}
