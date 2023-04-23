import 'dart:js';

import 'package:floricultura/screens/cadastro.dart';
import 'package:floricultura/screens/home.dart';
import 'package:floricultura/screens/informacoes_usuario.dart';
import 'package:floricultura/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'screens/catalogo.dart';
import 'screens/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/login': (context) => const LoginScreen(),
        '/cadastro': (context) => const Cadastro(),
        '/info-usuario': (context) => const InfoUsuario(),
        '/catalogo': (context) => const CatalogoPage(),
      }, 
    );
  }
  
}
