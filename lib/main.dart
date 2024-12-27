// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MyProfilePage(),
  ));
}

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: const AssetImage('assets/leaf.jpg'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Abayomi Favour',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'FLUTTER ENTHUSIASTIC',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white.withOpacity(0.4),
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              color: Colors.white.withOpacity(1),
              indent: 100,
              endIndent: 100,
              thickness: 0.5,
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              margin: const EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Row(
                children: [
                  Icon(Icons.phone, color: Colors.teal),
                  SizedBox(width: 30),
                  Text(
                    '+2348068491489',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Row(
                children: [
                  Icon(Icons.mail, color: Colors.teal),
                  SizedBox(width: 30),
                  Text(
                    'favour123@gmail.com',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
