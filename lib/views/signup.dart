import 'dart:convert';
import 'dart:ui';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadron_schematic_assistant/swatches/palette.dart';
import 'package:hadron_schematic_assistant/views/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  String? email = '';
  String? password = '';
  String? confirmPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/login_dark.png'),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                const Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Zrnic',
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.white,
                        offset: Offset(0.0, 0.0),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              primarySwatch[500].withOpacity(0.3),
                              secondarySwatch[500].withOpacity(0.2),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.white,
                            width: 0.2,
                          ),
                        ),
                        child: Column(
                          children: [
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  Get.snackbar('Error', 'Email cannot be empty',
                                      snackPosition: SnackPosition.BOTTOM,
                                      backgroundColor: Colors.redAccent,
                                      colorText: Colors.white,
                                      snackStyle: SnackStyle.FLOATING);
                                }
                                return null;
                              }, 
                              onChanged: (value) {
                                email = value;
                              },
                              decoration: const InputDecoration(
                                icon: Icon(
                                  Icons.email_outlined,
                                  size: 14,
                                  color: Colors.white,
                                ),
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                  fontFamily: 'AdventPro',
                                  color: Colors.white,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 0.5,
                                  ),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 3.0, horizontal: 15.0),
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Divider(
                              color: Colors.white,
                              thickness: 0.5,
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  Get.snackbar('Error', 'Password cannot be empty',
                                      snackPosition: SnackPosition.BOTTOM,
                                      backgroundColor: Colors.redAccent,
                                      colorText: Colors.white,
                                      snackStyle: SnackStyle.FLOATING);
                                }
                                return null;
                              },
                              onChanged: (value) {
                                password = value;
                              },
                              obscureText: true,
                              decoration: const InputDecoration(
                                icon: Icon(
                                  Icons.lock_outline_rounded,
                                  size: 14,
                                  color: Colors.white,
                                ),
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  fontFamily: 'AdventPro',
                                  color: Colors.white,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 3.0, horizontal: 15.0),
                              ),
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty || value != password) {
                                  Get.snackbar('Error',
                                      'Passwords do not match',
                                      snackPosition: SnackPosition.BOTTOM,
                                      backgroundColor: Colors.redAccent,
                                      colorText: Colors.white,
                                      snackStyle: SnackStyle.FLOATING);
                                }
                                return null;
                              },
                              obscureText: true,
                              decoration: const InputDecoration(
                                icon: Icon(
                                  Icons.lock_outline_rounded,
                                  size: 14,
                                  color: Colors.transparent,
                                ),
                                hintText: 'Confirm Password',
                                hintStyle: TextStyle(
                                  fontFamily: 'AdventPro',
                                  color: Colors.white,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 3.0, horizontal: 15.0),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Checkbox(
                                  value: true,
                                  onChanged: (value) {},
                                  shape: const CircleBorder(
                                    side: BorderSide(
                                      color: Colors.white,
                                      width: 0.5,
                                    ),
                                  ),
                                  activeColor: primarySwatch[500],
                                  checkColor: Colors.white,
                                ),
                                const Text(
                                    'I agree to the terms and conditions',
                                    style: TextStyle(
                                        fontFamily: 'AdventPro',
                                        color: Colors.white)),
                              ],
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                                onPressed: () {
                                  Register();
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
                                child: const Text('Register',
                                    style: TextStyle(
                                        fontFamily: 'NovaFlat', fontSize: 15))),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Have an account?',
                        style: TextStyle(
                            fontFamily: 'AdventPro', color: Colors.white)),
                    TextButton(
                      onPressed: () {
                        Get.offAllNamed('/login');
                      },
                      child: Text('Log in here',
                          style: TextStyle(
                              color: secondarySwatch[500],
                              fontFamily: 'NovaFlat')),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Divider(
                  thickness: 0.5,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.white,
                ),
                const SizedBox(height: 20),
                const Text('Sign up with other options',
                    style: TextStyle(
                        fontFamily: 'AdventPro', color: Colors.white)),
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
                        'assets/images/github.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text('© 2021 All rights reserved',
                    style: TextStyle(
                        fontFamily: 'AdventPro',
                        color: Colors.white,
                        fontSize: 10)),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }


Future Register() async {
  try {
    final response = await http.post(
      Uri.parse('https://api.example.com/register'),
      body: {
        'email': email,
        'password': password,
      },
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data['status'] == 'success') {
        Get.snackbar('Registration Successful', data['message'], 
          snackPosition: SnackPosition.BOTTOM, 
          backgroundColor: Colors.greenAccent, 
          colorText: Colors.white, 
          snackStyle: SnackStyle.FLOATING);
        Get.offAllNamed('/home');
      } else {
        Get.snackbar('Error', data['message'], 
          snackPosition: SnackPosition.BOTTOM, 
          backgroundColor: Colors.redAccent, 
          colorText: Colors.white, 
          snackStyle: SnackStyle.FLOATING);
      }
    } else {
      Get.snackbar('Error', 'Something went wrong');
    }
  } catch (e) {}
}

}
