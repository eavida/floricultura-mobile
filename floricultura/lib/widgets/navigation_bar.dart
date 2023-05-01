import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  final List<Map<String, dynamic>> _itens = [
    {'route': '/home'},
    {'route': '/catalogo'},
    {'route': '/carrinho'},
    {'route': '/info-usuario'}
  ];

  void _onTapped(int index) {
    setState(() {
      _currentIndex = index;
      Navigator.pushNamed(context, _itens[_currentIndex]['route']);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      backgroundColor: const Color(0xffffb3b3),
      unselectedItemColor: const Color(0xff6c4848),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      onTap: _onTapped,
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
