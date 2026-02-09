import 'package:flutter/material.dart';
import 'login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MedQ Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.medical_services_outlined,
              size: 100,
              color: Color(0xFF00B4B1),
            ),
            const SizedBox(height: 24),
            const Text(
              'Welcome to MedQ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              'Your Medical Companion',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 48),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                onPressed: () {
                  // Some action
                },
                child: const Text('Get Started'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
