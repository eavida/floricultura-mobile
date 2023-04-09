import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget loginSection = Container(
        padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 100),
        child: Column(children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Senha',
                    ),
                  ))
            ],
          )),
          Container(
              padding: const EdgeInsets.only(bottom: 100),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(140, 40),
                  textStyle: const TextStyle(fontSize: 15),
                  backgroundColor: Colors.pink,
                  foregroundColor: Colors.black,
                ),
                child: const Text('Login'),
                onPressed: () {},
              ))
        ]));
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login de Usuário'),
          backgroundColor: Colors.pink,
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1521728935364-00584c026397?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80"),
            fit: BoxFit.cover,
          )),
          child: loginSection,
        ));
  }
}
