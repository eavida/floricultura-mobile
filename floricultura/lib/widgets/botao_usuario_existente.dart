import 'package:flutter/material.dart';

import '../screens/login.dart';

class RedirecionarLogin extends StatelessWidget {
  const RedirecionarLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text(
          'Já é usuário?',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xbb6c4848),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            );
          },
          child: const Text('Fazer Login'),
        )
      ],
    );
  }
}
