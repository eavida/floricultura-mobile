import 'package:flutter/material.dart';

Widget navBar (BuildContext context){
  return BottomNavigationBar(//Transformar em um widget em si.
            items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Color(0xff6c4848)),
            backgroundColor: Color(0xffffb3b3),
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