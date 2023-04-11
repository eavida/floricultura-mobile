import 'package:flutter/material.dart';

class CampoEmail extends StatelessWidget{
  const CampoEmail({super.key});
  
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: Container(
        decoration: BoxDecoration(
        color: const Color(0xfff4f4f4),
        border: Border.all(color: const Color(0xfff4f4f4)),
        borderRadius: BorderRadius.circular(12)
      ),
      child: const Padding(
        padding: EdgeInsets.only(left: 20),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Email',
          ),
          keyboardType: TextInputType.emailAddress
      ),
    )
      )
      );
  }
}