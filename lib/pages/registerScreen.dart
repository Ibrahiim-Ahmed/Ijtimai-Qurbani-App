import 'package:flutter/material.dart';
import 'package:ijtimai_qurbani_app/pages/login.dart';
import 'package:ijtimai_qurbani_app/pages/signup.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 124, 95),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Image.asset(
              'lib/assets/goat.png',
              width: 100,
              height: 100,
            ),
            SizedBox(height: 100),
            Text(
              "Register/Sign Yourself In As:",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 100),
            _buildOptionButton(
                context, Icons.mosque_outlined, "Masjid", Signup()),
            SizedBox(height: 20),
            _buildOptionButton(
                context, Icons.person_outline, "Person", Login()),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionButton(
      BuildContext context, IconData icon, String label, Widget page) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.brown,
        fixedSize: const Size(130, 40),
        textStyle: const TextStyle(fontSize: 18),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
          ),
          SizedBox(width: 15),
          Text(
            label,
            style: TextStyle(fontSize: 16), // Adjust the font size as needed
          ),
        ],
      ),
    );
  }
}
