import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final VoidCallback onSwitch;

  const LoginForm({super.key, required this.onSwitch});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 40),
        const Text(
          'RideShare',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 50),
        TextField(
          decoration: InputDecoration(
            hintText: 'Email',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Password',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Login'),
        ),
        const SizedBox(height: 16),
        TextButton(
          onPressed: onSwitch,
          child: const Text("Don't have an account? Sign up"),
        ),
      ],
    );
  }
}
