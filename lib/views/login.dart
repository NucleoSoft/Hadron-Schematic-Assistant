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
                  hintStyle: TextStyle(
                    fontFamily: 'AdventPro'
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 15.0),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    fontFamily: 'AdventPro',
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 15.0),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Forgot Password?', style: TextStyle(
                  color: primarySwatch[500], fontFamily: 'NovaFlat')),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.offAllNamed('/home');
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: primarySwatch[500],
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 20,
                  ),
                ),
                child: const Text('Login', 
                        style: TextStyle(fontFamily: 'NovaFlat', fontSize: 15))
                        ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?', style: TextStyle(
                    fontFamily: 'AdventPro'
                  )),
                  TextButton(
                    onPressed: () {
                      Get.offAllNamed('/signup');
                    },
                    child: Text('Signup', style: TextStyle(
                      color: primarySwatch[500], fontFamily: 'NovaFlat')),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              const SizedBox(height: 20),
              const Text('Sign in with other options',
                  style: TextStyle(fontFamily: 'AdventPro')),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(20),
                    ),
                     child: Image.asset(
                      'assets/images/google.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(20),
                    ),
                    child: Image.asset(
                      'assets/images/twitter.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(20),
                    ),
                    child: Image.asset(
                      'assets/images/facebook.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                ],
              ),
            ],
          ),
          ),
        ), 
    );
  }
}
