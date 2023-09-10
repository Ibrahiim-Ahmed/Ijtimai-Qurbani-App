import 'package:flutter/material.dart';
import 'package:ijtimai_qurbani_app/pages/login.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 36,
                  color: Color.fromARGB(255, 68, 40, 30),
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 10),
              _buildTextField("First Name", "Enter First Name"),
              const SizedBox(height: 5),
              _buildTextField("Last Name", "Enter Last Name"),
              const SizedBox(height: 5),
              _buildTextField("User Name", "Enter User Name"),
              const SizedBox(height: 5),
              _buildTextField("Email Address", "Enter Email"),
              const SizedBox(height: 5),
              _buildTextField("Password", "Enter Password", obscureText: true),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  // Implement your sign-up logic here
                },
                child: const Text("Sign Up"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 68, 40, 30),
                  foregroundColor: Colors.white,
                  fixedSize: const Size(100, 50),
                  textStyle: const TextStyle(fontSize: 18),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                child: const Text("Already Have An Account ?"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText, String hintText,
      {bool obscureText = false}) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}
