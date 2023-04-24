import 'package:floricultura/screens/cadastro.dart';
import 'package:floricultura/screens/catalogo.dart';
import 'package:floricultura/screens/informacoes_usuario.dart';
import 'package:floricultura/screens/login.dart';
import 'package:flutter/material.dart';

import '../screens/home.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar>{
  int _currentIndex = 0;
  static const pages = [
    Home(),
    CatalogoPage(),
    InfoUsuario(),
    LoginScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() => _currentIndex = value);
          },
          backgroundColor: const Color(0xffffb3b3),
          selectedItemColor: const Color(0xff6c4848),
          showSelectedLabels: true,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color(0xff6c4848), size: 30),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Color(0xff6c4848), size: 30),
              label: 'Procurar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, color: Color(0xff6c4848), size: 30),
              label: 'Carrinho',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, color: Color(0xff6c4848), size: 30),
              label: 'Minha Conta',
            )
          ],
      ),
    );
  }
}
