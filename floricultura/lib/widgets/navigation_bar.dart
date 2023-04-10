import 'package:flutter/material.dart';

class NavBar extends StatelessWidget{
  const NavBar({super.key});

  @override
  Widget build(BuildContext context){
  return BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Color(0xff6c4848)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Color(0xff6c4848)),
            label: 'Procurar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,color: Color(0xff6c4848)),
            label: 'Carrinho',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,color: Color(0xff6c4848)),
            label: 'Minha Conta',
          )
        ]);
}
}