import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadron_schematic_assistant/swatches/palette.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.offAllNamed('/home');
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: primarySwatch[500],
                  padding: const EdgeInsets.symmetric(
                    horizontal: 70,
                    vertical: 30,
                  ),
                ),
                child: const Text('Login'),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () {
                      Get.offAllNamed('/signup');
                    },
                    child: Text('Signup', style: TextStyle(color: primarySwatch[500])),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
            ],
          ),
          ),
        ), 
    );
  }
}
