import 'package:flutter/material.dart';
import 'package:machine_test/home.dart';
import 'package:machine_test/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String? name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final SharedPreferences sharedPreferences =
                    await SharedPreferences.getInstance();
                String? username = sharedPreferences.getString("name");
                setState(() {
                  name = username;
                });
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>
                          name == null ? const LoginPage() : const HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: const Text(
                "Home Page",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
