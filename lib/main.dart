import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/auth_screen/auth_screen.dart';
import 'screens/home_screen.dart';
import 'screens/post_find_ride_screen/post_find_ride_screen.dart';
import 'screens/profile_screen/profile_screen.dart';

void main() {
  runApp(const RideShareApp());
}

class RideShareApp extends StatelessWidget {
  const RideShareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RideShare',
      theme: ThemeData(
        primaryColor: const Color(0xFF1976D2),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: false,
      ),
      routes: {
        '/': (context) => const SplashScreen(),
        '/auth': (context) => const AuthScreen(),
        '/home': (context) => const HomeScreen(),
        '/post_find': (context) => const PostFindRideScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
