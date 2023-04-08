import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadron_schematic_assistant/views/login.dart';
import 'package:hadron_schematic_assistant/views/signup.dart';
import 'package:hadron_schematic_assistant/swatches/palette.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Get.offAll(const Login());
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Home'),
      ),
    );
  }
}