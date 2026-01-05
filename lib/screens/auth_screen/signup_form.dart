import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  bool isDriver = false;
  String? avatarUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                avatarUrl = avatarUrl == null
                    ? 'https://via.placeholder.com/150'
                    : null;
              });
            },
            child: CircleAvatar(
              radius: 42,
              backgroundColor: Colors.blue.shade50,
              backgroundImage: avatarUrl != null ? NetworkImage(avatarUrl!) : null,
              child: avatarUrl == null
                  ? Icon(Icons.camera_alt, color: Colors.blue.shade700)
                  : null,
            ),
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: nameController,
          decoration: InputDecoration(
            hintText: 'Full Name',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: emailController,
          decoration: InputDecoration(
            hintText: 'Email',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: phoneController,
          decoration: InputDecoration(
            hintText: 'Phone (optional)',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: passwordController,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Password',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
        const SizedBox(height: 12),
        SwitchListTile(
          title: const Text('Register as a driver'),
          value: isDriver,
          onChanged: (v) => setState(() => isDriver = v),
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: () {
            // Navigate to home after signup
            Navigator.of(context).pushReplacementNamed('/home');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          child: const Text('Sign Up', style: TextStyle(fontSize: 16)),
        ),
        const SizedBox(height: 16),
        Center(
          child: TextButton(
            onPressed: () {},
            child: const Text("Already have an account? Login"),
          ),
        ),
      ],
    );
  }
}
