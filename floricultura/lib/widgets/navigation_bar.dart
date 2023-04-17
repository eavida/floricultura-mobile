import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xffffb3b3),
      showSelectedLabels: false,
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
    );
  }
}
