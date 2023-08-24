import 'package:flutter/material.dart';
import 'package:ijtimai_qurbani_app/pages/login.dart';
import 'package:ijtimai_qurbani_app/pages/signup.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              'lib/assets/goat.png',
              width: 100,
              height: 100,
            ),
            const SizedBox(
              height: 150,
            ),
            const Text(
              "Register/Sign Yourself In As:",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 150,
            ),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Signup()))
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.brown,
                  fixedSize: const Size(130, 40),
                  textStyle: const TextStyle(fontSize: 18)),
              child: Row(
                children: [
                  Icon(
                    Icons.mosque_outlined,
                    size: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Masjid"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()))
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.brown,
                  fixedSize: const Size(130, 40),
                  textStyle: const TextStyle(fontSize: 18)),
              child: Row(
                children: [
                  Icon(
                    Icons.person_outline,
                    size: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Person"),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 204, 124, 95),
    );
  }
}
