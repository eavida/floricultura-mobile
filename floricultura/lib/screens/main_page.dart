import 'package:floricultura/screens/cadastro.dart';
import 'package:floricultura/screens/home.dart';
import 'package:floricultura/screens/informacoes_usuario.dart';
import 'package:floricultura/screens/login.dart';
import 'package:floricultura/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget{
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{
  int currentIndex = 0;
  final screens = [
    Home(),
    Cadastro(),
    InfoUsuario(),
    LoginScreen()
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: NavBar(),
    );
  }
}