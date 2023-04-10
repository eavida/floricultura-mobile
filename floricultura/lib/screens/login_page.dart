import 'package:flutter/material.dart';
import '../widgets/navigation_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  //final NavBar navigationBar;

  @override
  Widget build(BuildContext context) {
    Widget loginSection = Column(
      children: [
        Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: const Color(0xffffb3b3),
              ),
              child: const Icon(
                Icons.arrow_back,
                color: Color(0xff6c4848),
                size: 38,
              ),
            )),
        Expanded(
          child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                padding: const EdgeInsets.fromLTRB(100, 150, 100, 0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                ),
              )),
              Container(
                padding: const EdgeInsets.fromLTRB(100, 8, 100, 8),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                ),
                keyboardType: TextInputType.text,
                obscureText: true,
              )),
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
            image: AssetImage("assets/images/background.jpg"),
            //image: NetworkImage(
                //"https://images.unsplash.com/photo-1544833058-e70f9ca25c17?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
            fit: BoxFit.cover,
          )),
          child: loginSection,
        ));
  }
}
