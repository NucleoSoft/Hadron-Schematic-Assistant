import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadron_schematic_assistant/views/login.dart';
import 'package:hadron_schematic_assistant/views/signup.dart';
import 'package:hadron_schematic_assistant/views/home.dart';
import 'package:hadron_schematic_assistant/views/splashscreen.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => const SplashScreen()),
      GetPage(name: '/login', page: () => const Login()),
      GetPage(name: '/signup', page: () => const Signup()),
      GetPage(name: '/home', page: () => const Home()),
    ],
  ));
}
