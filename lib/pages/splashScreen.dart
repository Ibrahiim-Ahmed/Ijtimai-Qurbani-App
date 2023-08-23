import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ijtimai_qurbani_app/pages/registerScreen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Image.asset(
              'lib/assets/goat.png',
              width: 200,
              height: 200,
            ),
            const Text(
              'Ijtimai Qurbani App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 250),
            const Text(
              "Developed By : Ibrahim Ahmed  &  S.M. Huzaifa",
              style: TextStyle(
                  color: Colors.black,
                  backgroundColor: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
