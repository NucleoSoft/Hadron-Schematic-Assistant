import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadron_schematic_assistant/views/login.dart';
import 'package:hadron_schematic_assistant/views/signup.dart';
import 'package:hadron_schematic_assistant/views/home.dart';
import 'package:hadron_schematic_assistant/views/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      appId: appId,
      apiKey: apiKey,
      messagingSenderId: messagingSenderId,
      projectId: projectId,
      storageBucket: storageBucket,
    ),
  );
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
