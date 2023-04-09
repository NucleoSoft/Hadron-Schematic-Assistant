import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadron_schematic_assistant/swatches/palette.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed('/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
           image: DecorationImage(
             image: AssetImage('assets/images/splash_dark.png'),
             fit: BoxFit.cover,
           ),
          ),
        child: const Text('Hadron IDE', style: TextStyle(
          color: Colors.white, fontFamily: 'NovaFlat',shadows:[
            Shadow(
              blurRadius: 10.0,
              color: Colors.white,
              offset: Offset(0.0, 0.0),
            ),
          ] )),
        ),
      ),
    );
  }
}