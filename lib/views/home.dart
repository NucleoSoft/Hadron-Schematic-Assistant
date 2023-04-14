import 'dart:ui';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadron_schematic_assistant/views/login.dart';
import 'package:hadron_schematic_assistant/swatches/palette.dart';

final Uri _url =
    Uri.parse('https://github.com/Manu254rce/Hadron-Schematic-Assistant');

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: surfaceSwatch[900],
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: surfaceSwatch[700],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 50,
        color: surfaceSwatch[700],
        notchMargin: 4,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.calendar_month_rounded),
              color: surfaceSwatch[50],
              onPressed: () {
                // Get.offAll(const Home());
              },
            ),
            IconButton(
              icon: const Icon(Icons.note_alt_rounded),
              color: surfaceSwatch[50],
              onPressed: () {
                // Get.offAll(const Home());
              },
            ),
            const SizedBox(width: 30),
            IconButton(
              icon: const Icon(Icons.calculate_outlined),
              color: surfaceSwatch[50],
              onPressed: () {
                // Get.offAll(const Profile());
              },
            ),
            IconButton(
              icon: const Icon(Icons.terminal_outlined),
              color: surfaceSwatch[50],
              onPressed: () {
                // Get.offAll(const Profile());
              },
            ),
          ],
        ),
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
                    physics: const BouncingScrollPhysics(),
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
                        title: const Text('View Profile',
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
                      ListTile(
                        leading: const Icon(Icons.people_outline_rounded,
                            color: Colors.white),
                        title: const Text('Collaborations',
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
                        title: const Text('Help Center',
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
                                color: Colors.white, fontFamily: 'Zrnic'),
                            backgroundColor: surfaceSwatch[900],
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Divider(
                                    indent: 10,
                                    endIndent: 10,
                                    thickness: 0.2,
                                    color: Colors.white),
                                const SizedBox(height: 10),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        elevation: 0,
                                        shape: const CircleBorder()),
                                    onPressed: _launchUrl,
                                    child: const Image(
                                        image: AssetImage(
                                            'assets/images/github.png'),
                                        height: 20,
                                        width: 20)),
                                const Text('v 0.0.1',
                                    style: TextStyle(
                                        fontFamily: 'AdventPro',
                                        color: Colors.white,
                                        fontSize: 14)),
                                const SizedBox(height: 10),
                                const Text('Project by Manu254rce',
                                    style: TextStyle(
                                        fontFamily: 'AdventPro',
                                        color: Colors.white,
                                        fontSize: 14)),
                                const SizedBox(height: 10),
                                const Text(
                                    'Copyright 2023. All Rights Reserved',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12)),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [],
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [ternarySwatch[800], ternarySwatch[600]])),
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
                              'Daily Tip: ',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Audiowide',
                                fontSize: 15,
                              ),
                            ),
                            Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationZ(2 / 4),
                              child: Image.asset(
                                'assets/images/tip.png',
                                width: 80,
                                height: 80,
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
      floatingActionButton: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,           
            colors: [primarySwatch[600], secondarySwatch[600]],
          ),
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          onPressed: () {
            Get.bottomSheet(
              ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          primarySwatch[500].withOpacity(0.3),
                          secondarySwatch[500].withOpacity(0.2)
                        ]
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('New Project',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'NovaFlat')),
                        const SizedBox(height: 10),
                        const TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            icon: Icon(Icons.add_circle, color: Colors.white, size: 20),
                            hintText: 'Project Name',
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontFamily: 'NovaFlat',
                                fontSize: 13),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 0.5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 0.5,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Divider(
                          color: Colors.white,
                          thickness: 0.5,
                          indent: 20,
                          endIndent: 20,
                        ),
                        const SizedBox(height: 10),
                        const Text('Project Type',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'NovaFlat')),
                        const SizedBox(height: 10),
                        GridView(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3, crossAxisSpacing: 16, mainAxisSpacing: 16),
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: surfaceSwatch[900],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.insert_drive_file_outlined, color: Colors.white),
                                  Text('Empty Project',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'NovaFlat',
                                          fontSize: 10)),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: surfaceSwatch[900],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.table_chart_outlined, color: Colors.white),
                                  Text('Flow Chart',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'NovaFlat',
                                          fontSize: 10)),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: surfaceSwatch[900],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.add, color: Colors.white),
                                  Text('Electric Circuit',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'NovaFlat',
                                          fontSize: 10)),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: surfaceSwatch[900],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.electric_meter_rounded, color: Colors.white),
                                  Text('Logic Diagram',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'NovaFlat',
                                          fontSize: 10)),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ), 
                  ),
                ),
              ),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    Get.snackbar(
      'Error!',
      'Could not launch $_url',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      colorText: Colors.white,
      duration: const Duration(seconds: 3),
    );
  } else {
    await launchUrl(_url);
  }
}
