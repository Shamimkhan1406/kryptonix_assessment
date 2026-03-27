import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  final String name;
  final String email;
  final String phone;
  final String countryCode;

  const WelcomeScreen({
    super.key,
    required this.name,
    required this.email,
    required this.phone,
    required this.countryCode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome, $name!",
                style: const TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),

            Text("Email: $email"),
            Text("Country Code: $countryCode"),
            Text("Phone: $phone"),
          ],
        ),
      ),
    );
  }
}