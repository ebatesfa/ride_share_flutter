import 'package:flutter/material.dart';
import 'login_form.dart';
import 'signup_form.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 52, bottom: 12),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF1976D2),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                const Text('RideShare', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => setState(() => isLogin = true),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 22),
                        decoration: BoxDecoration(
                          color: isLogin ? Colors.white : Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('Login', style: TextStyle(color: isLogin ? const Color(0xFF1976D2) : Colors.white70, fontSize: 16)),
                      ),
                    ),
                    const SizedBox(width: 12),
                    GestureDetector(
                      onTap: () => setState(() => isLogin = false),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                        decoration: BoxDecoration(
                          color: !isLogin ? Colors.white : Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('Sign Up', style: TextStyle(color: !isLogin ? const Color(0xFF1976D2) : Colors.white70, fontSize: 16)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: isLogin ? const LoginForm() : const SignupForm(),
            ),
          ),
        ],
      ),
    );
  }
}
