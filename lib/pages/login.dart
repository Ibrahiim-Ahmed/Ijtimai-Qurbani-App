import 'package:flutter/material.dart';
import 'package:ijtimai_qurbani_app/api/apis.dart';
import 'package:ijtimai_qurbani_app/pages/masjidDashboard.dart';
import 'package:ijtimai_qurbani_app/pages/userDashboard.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final UserLogin userLogin = UserLogin();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String errorMessage = '';

  void _handleLogin(BuildContext context) {
    final String username = usernameController.text;
    final String password = passwordController.text;

    userLogin.login(username, password).then((result) {
      if (result['password'] == password) {
        Navigator.pushReplacementNamed(context, '/dashboard');
      } else {
        setState(() {
          errorMessage = 'Invalid username or password.';
        });
      }
    }).catchError((error) {
      setState(() {
        errorMessage = 'An error occurred during login.';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Log In",
              style: TextStyle(
                fontSize: 40,
                color: Color.fromARGB(255, 68, 40, 30),
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'Enter User Name',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter Password',
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => {
                if (usernameController.text == "masjid" &&
                    passwordController.text == "123")
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MasjidDashboard()))
                  }
                else if (usernameController.text == "user" &&
                    passwordController.text == "456")
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserDashboard()))
                  }
                else
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Wrong User Name/Password'),
                        backgroundColor: Colors.red,
                      ),
                    )
                  }
              },
              child: Row(
                children: [
                  Text("Log In"),
                ],
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 68, 40, 30),
                  foregroundColor: Colors.white,
                  fixedSize: Size(85, 50),
                  textStyle: TextStyle(fontSize: 18)),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
