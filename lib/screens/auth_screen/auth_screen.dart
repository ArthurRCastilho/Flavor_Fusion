import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Flavor Fusion',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
              ),
            ),
            const SizedBox(height: 20),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Username',
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Senha',
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {},
                    label: const Text('Entrar'),
                    icon: const Icon(Icons.login),
                  ),
                  const SizedBox(height: 20),
                  TextButton.icon(
                    onPressed: () {},
                    label: const Text('Criar conta'),
                    icon: const Icon(Icons.add),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
