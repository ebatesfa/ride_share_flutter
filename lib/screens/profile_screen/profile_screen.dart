import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color(0xFF1976D2),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 45,
              child: Icon(Icons.person, size: 40),
            ),
            const SizedBox(height: 10),
            const Text(
              'Eba Koko',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text('ebakoko@email.com'),
            const Text('+1234567890'),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Edit Profile'),
            ),
            const ListTile(
              leading: Icon(Icons.history),
              title: Text('Ride History'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.all(14),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/auth');
              },
              child: const Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }
}
