import 'package:flutter/material.dart';
import 'package:ijtimai_qurbani_app/pages/login.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(height: 80),
              const Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(255, 68, 40, 30),
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 40),
              const Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'First Name',
                    hintText: 'Enter First Name',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Last Name',
                    hintText: 'Enter Last Name',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email Address',
                    hintText: 'Enter Email',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter Password',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => {},
                child: Row(
                  children: [
                    Text("Sign Up"),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 68, 40, 30),
                    foregroundColor: Colors.white,
                    fixedSize: Size(100, 50),
                    textStyle: TextStyle(fontSize: 18)),
              ),
              TextButton(
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Login(),
                            ))
                      },
                  child: const Text("Already Have An Account ?")),
            ],
          ),
        ));
  }
}
