import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadron_schematic_assistant/views/login.dart';
import 'package:hadron_schematic_assistant/swatches/palette.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: primarySwatch[600],
      ),
      drawer: Drawer(
        backgroundColor: surfaceSwatch[500].withOpacity(0.1),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(0),
                    children: [
                      DrawerHeader(
                        decoration: BoxDecoration(
                          color: primarySwatch[600],
                        ),
                        child: const Text('Drawer Header'),
                      ),
                      ListTile(
                        leading: const Icon(Icons.person_outline_rounded,
                            color: Colors.white),
                        title: const Text('Profile',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'NovaFlat')),
                        onTap: () {
                          // Get.offAll(const Profile());
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.workspaces_rounded,
                            color: Colors.white),
                        title: const Text('Workspaces',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'NovaFlat')),
                        onTap: () {
                          // Get.offAll(const Home());
                        },
                      ),
                      Divider(
                        color: surfaceSwatch[50],
                        thickness: 0.5,
                        indent: 20,
                        endIndent: 20,
                      ),
                      ListTile(
                        leading: const Icon(Icons.code_outlined,
                            color: Colors.white),
                        title: const Text('Learning',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'NovaFlat')),
                        onTap: () {
                          // Get.offAll(const Login());
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.gamepad_rounded,
                            color: Colors.white),
                        title: const Text('Games',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'NovaFlat')),
                        onTap: () {
                          // Get.offAll(const Login());
                        },
                      ),
                      ListTile(
                        leading:
                            const Icon(Icons.settings, color: Colors.white),
                        title: const Text('Settings',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'NovaFlat')),
                        onTap: () {
                          // Get.offAll(const Login());
                        },
                      ),
                      Divider(
                        color: surfaceSwatch[50],
                        thickness: 0.5,
                        indent: 20,
                        endIndent: 20,
                      ),
                      ListTile(
                        leading: const Icon(Icons.star_rate_rounded,
                            color: Colors.white),
                        title: const Text('Rate Us',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'NovaFlat')),
                        onTap: () {
                          // Get.offAll(const Signup());
                        },
                      ),
                      ListTile(
                        leading:
                            const Icon(Icons.help_outline, color: Colors.white),
                        title: const Text('Help',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'NovaFlat')),
                        onTap: () {
                          // Get.offAll(const Signup());
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.logout_rounded,
                            color: Colors.redAccent),
                        title: const Text('Logout',
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 14,
                                fontFamily: 'NovaFlat')),
                        onTap: () {
                          Get.offAll(const Login());
                        },
                      ),
                    ],
                  ),
                ),
                const Divider(
                  indent: 50,
                  endIndent: 50,
                  color: Colors.white,
                  thickness: 0.5,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  height: 100,
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                         Get.defaultDialog(
                          
                          titlePadding: const EdgeInsets.all(30),
                            title: 'Hadron Schematic Assistant',
                            titleStyle: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'Zrnic'  
                            ),
                            backgroundColor: surfaceSwatch[900],
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Divider(
                                  indent: 10,
                                  endIndent: 10,
                                  thickness: 0.2,
                                  color: Colors.white
                                ),
                                Text('v 0.0.1', style: TextStyle(
                                  fontFamily: 'AdventPro',
                                  color: Colors.white,
                                  fontSize: 14
                                )),
                                Text('Copyright 2023. All Rights Reserved',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12
                                )),
                              ],
                            ),
                          );
                        },
                        child: const Text('Hadron Schematic Assistant',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Zrnic')),
                      ),
                      const SizedBox(height: 10),
                      const Text('v0.0.1',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'NovaFlat')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: surfaceSwatch[900],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: <Color>[
                              primarySwatch[600],
                              secondarySwatch[600],
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.create_new_folder,
                                size: 30, color: surfaceSwatch[50]),
                            const Text('New Project',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12))
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration
                    (
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        ternarySwatch[800],
                        ternarySwatch[600]
                      ])
                    ),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 20,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              'TIP: ',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Audiowide',
                                fontSize: 15,
                              ),
                            ),
                            Transform(
                              alignment: Alignment.center,
                              transform:
                                  Matrix4.rotationZ(2 / 4),
                              child: Image.asset('assets/images/tip.png', 
                                          width: 70, height: 70,
                                          ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.white,
                          thickness: 0.5,
                          indent: 20,
                          endIndent: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: primarySwatch[600],
        child: const Icon(Icons.add),
      ),
    );
  }
}
