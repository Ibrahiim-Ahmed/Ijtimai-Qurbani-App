import 'package:flutter/material.dart';
import 'package:ijtimai_qurbani_app/pages/login.dart';
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
            SizedBox(
              height: 50,
            ),
            Image.asset(
              'lib/assets/goat.png',
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: 150,
            ),
            Text(
              "Register/Sign Yourself In As:",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 150,
            ),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Signup()))
              },
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
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.green,
                  fixedSize: Size(130, 40),
                  textStyle: TextStyle(fontSize: 18)),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()))
              },
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
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.green,
                  fixedSize: Size(130, 40),
                  textStyle: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.green,
    );
  }
}
