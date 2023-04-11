import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  const Login({super.key});
  
  @override
  Widget build (BuildContext context){
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
          child: const Text('Login'),
          onPressed: () {},
      ));
  }
}