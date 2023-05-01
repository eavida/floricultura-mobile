import 'package:floricultura/screens/cadastro.dart';
import 'package:floricultura/screens/catalogo.dart';
import 'package:floricultura/screens/home.dart';
import 'package:floricultura/screens/informacoes_usuario.dart';
import 'package:floricultura/screens/login.dart';
import 'package:floricultura/screens/pagamento.dart';
import 'package:floricultura/screens/produto_page.dart';
import 'package:floricultura/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

import 'carrinho.dart';
import 'detalhes_do_pedido.dart';

class MainPage extends StatefulWidget{
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{
  int currentIndex = 0;
  final screens = const [
    Home(),
    Cadastro(),
    InfoUsuario(),
    LoginScreen(),
    Carrinho(),
    DetalhesPedido(),
    ProdutoPage(),
    Pagamento(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: const NavBar(),
    );
  }
}