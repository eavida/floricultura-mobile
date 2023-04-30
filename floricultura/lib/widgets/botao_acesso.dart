import 'package:flutter/material.dart';

class AcessoBotao extends StatelessWidget {
  final String text;
  final String screenName;
  const AcessoBotao({Key? key, required this.text, required this.screenName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> routes = {
      'login': '/login',
      'cadastro': '/cadastro',
      'info-usuario': '/info-usuario',
      'catalogo' : '/catalogo',
      'home' : '/home',
      'main' : '/main',
    };

    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          minimumSize: const Size.fromHeight(50),
          textStyle: const TextStyle(fontSize: 18),
          backgroundColor: const Color(0xffffb3b3),
          foregroundColor: const Color(0xff6c4848),
        ),
        child: Text(text),
        onPressed: () {
          final routeName = routes[screenName];
          if (routeName != null) {
            Navigator.pushNamed(context, routeName);
          }
        },
      ),
    );
  }
}
